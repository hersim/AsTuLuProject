﻿using System.ComponentModel;

namespace AsTuLuWebProject.Utilities.Enums
{
    public static class EnumLibrary
    {
        public enum BookRelationshipEnum
        {
            [Description("Aimé")]
            Liked = 0,
            [Description("Déplaire")]
            Unliked = 1,
        }

        public enum BookStatusEnum
        {
            [Description("Publié")]
            Published = 0,
            [Description("Soumis")]
            Submitted = 1,
            [Description("Révision")]
            UnderReview = 2
        }    

        public enum ActionStatus
        {
            [Description("Liked")]
            Liked = 0,
            [Description("Unliked")]
            Unliked = 1,
            [Description("Nulled")]
            Nulled = 2
        }

        public enum BookLanguage
        {
            [Description("Français")]
            Francais = 0,
            [Description("Anglais")]
            Anglais = 1,
            [Description("Autre")]
            Autre = 128
        }
    }
}