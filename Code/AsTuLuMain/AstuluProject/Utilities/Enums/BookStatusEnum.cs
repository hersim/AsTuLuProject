﻿using System.ComponentModel;

namespace AstuluProject.Utilities.Enums
{
    public enum BookStatusEnum
    {
        [Description("Publié")]
        Published = 0,
        [Description("Soumis")]
        Submitted = 1,
        [Description("Révision")]
        UnderReview = 2
    }
}