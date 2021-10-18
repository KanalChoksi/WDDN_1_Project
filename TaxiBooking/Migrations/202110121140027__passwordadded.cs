namespace TaxiBooking.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _passwordadded : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Customers", "Password", c => c.String());
        }

        public override void Down()
        {
            DropColumn("dbo.Customer", "Password");
        }
    }
}
