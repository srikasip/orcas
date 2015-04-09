class CreateEventsParsers < ActiveRecord::Migration
  def change
    create_table :events_parsers do |t|
      t.text :eventName_xpath
      t.text :eventLocation_xpath
      t.text :eventDateTime_xpath
      t.text :eventDescription_xpath
      t.text :eventPrice_xpath
      t.text :eventImage_xpath
      t.integer :event_agg_id

      t.timestamps
    end
  end
end
