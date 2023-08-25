namespace FamilyExperienceApp.MVC.Areas.Manage.ViewModels
{
    public class PaginatedVM<T>
    {
        public int PageIndex { get; set; }
        public int TotalPages { get; set; }
        public List<T> Items { get; set; }
        public bool HasNext { get; set; }
        public bool HasPrev { get; set; }
    }
}
