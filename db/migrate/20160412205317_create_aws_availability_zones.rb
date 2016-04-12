class CreateAwsAvailabilityZones < ActiveRecord::Migration
  def change
    create_table :aws_availability_zones do |t|
      t.references :aws_region, index: true
      t.text :description
      t.boolean :use

      t.timestamps
    end
  end
end
