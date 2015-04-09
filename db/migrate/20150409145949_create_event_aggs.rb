class CreateEventAggs < ActiveRecord::Migration
  def change
    create_table :event_aggs do |t|
      t.string :name
      t.string :url
      t.integer :site_type
      t.string :pagination
      t.string :domain
      t.string :eventDetailsPageLink_xpath

      t.timestamps
    end
  end
end
