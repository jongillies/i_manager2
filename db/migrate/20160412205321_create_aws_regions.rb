class CreateAwsRegions < ActiveRecord::Migration
  def change
    create_table :aws_regions do |t|
      t.string :name
      t.string :endpoint
      t.boolean :use
      t.text :description

      t.timestamps
    end
  end
end
