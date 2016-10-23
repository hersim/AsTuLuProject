using System.Collections.Generic;

namespace AsTuLuWebProject.Models.ViewModels
{
    public class BookSession
    {
        public List<int> BookIds { get; set; }

        public BookSession()
        {
            BookIds = new List<int>();
        }
    }
}