class PoItem < ApplicationRecord
  belongs_to :po
  belongs_to :item
  has_many :po_updates

  validates :qty, :po_inspect, :po_stuffing, :item_id, presence: true, length: { maximum: 30}, if: :can_validate?
  def can_validate?
    true
  end
  validates :item_id, :presence => true

  def self.data_report_per_item
    query_item = ["SELECT T1.item_id, name, Total_Qty as total_qty, total_qty_finish, total_qty_finish-Total_Qty as minus
      FROM
        (
        SELECT item_id, SUM(qty) AS Total_Qty
        FROM PO_ITEMS
        GROUP BY  item_id
        ) T1 INNER JOIN
        (
        SELECT item_id,  sum(qty_finish) as total_qty_finish
        FROM po_items INNER JOIN po_updates ON po_items.id =po_updates.po_item_id
        GROUP BY item_id
        ) T2 ON T1.item_id = T2.item_id
      LEFT JOIN items T3 ON T3.id = T1.item_id ORDER BY name"]
    results = PoItem.find_by_sql(query_item)
  end


#Belum di pakai
  # def self.data_report_per_po
  #   query_po = ["SELECT T1.item_id, name, Total_Qty as total_qty, total_qty_finish, total_qty_finish-Total_Qty as minus
  #     FROM
  #       (
  #       SELECT item_id, SUM(qty) AS Total_Qty
  #       FROM PO_ITEMS
  #       GROUP BY  item_id
  #       ) T1 INNER JOIN
  #       (
  #       SELECT item_id,  sum(qty_finish) as total_qty_finish
  #       FROM po_items INNER JOIN po_updates ON po_items.id =po_updates.po_item_id
  #       GROUP BY item_id
  #       ) T2 ON T1.item_id = T2.item_id
  #     LEFT JOIN items T3 ON T3.id = T1.item_id"]
  #   results = PoItem.find_by_sql(query_po)
  # end
end
