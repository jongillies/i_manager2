class CreateAwsVpcs < ActiveRecord::Migration
  def change
    create_table :aws_vpcs do |t|
      t.string :name
      t.string :aws_name
      t.string :cidr_block
      t.string :instance_tenancy
      t.string :enable_dns_support
      t.string :enable_dns_hostnames
      t.string :subnet_base
      t.references :aws_account, index: true
      t.references :aws_region, index: true

      t.timestamps
    end
  end
end
