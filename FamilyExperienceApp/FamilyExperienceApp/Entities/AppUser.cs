using Microsoft.AspNetCore.Identity;

namespace FamilyExperienceApp.Entities
{
    public class AppUser:IdentityUser
    {
        public string FullName { get; set; }
        public bool IsAdmin { get; set; }
    }
}
