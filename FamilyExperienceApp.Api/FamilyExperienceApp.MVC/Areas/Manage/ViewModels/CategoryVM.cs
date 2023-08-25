namespace FamilyExperienceApp.MVC.Areas.Manage.ViewModels
{
    public class CategoryVM
    {
        public List<CategoryVMItem> Categories { get; set; }

        public class CategoryVMItem
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
    }
}
