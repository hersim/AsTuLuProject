﻿using AstuluProject.Models.Database;

namespace AstuluProject.Utilities.Containers
{
    public class BookContainer
    {
        public Book BookToShow { get; set; }

        public BookByUser BookRelationship { get; set; }
    }
}