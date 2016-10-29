using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using System.Security.Cryptography;
using System.Web.Mvc;

namespace AsTuLuWebProject.Utilities
{
    public static class ExtensionMethods
    {
        public static MvcHtmlString If(this MvcHtmlString _value, bool _evaluation)
        {
            return _evaluation ? _value : MvcHtmlString.Empty;
        }

        static byte[] GenerateSaltedHash(IList<byte> _plainText, IList<byte> _salt)
        {
            HashAlgorithm algorithm = new SHA256Managed();

            byte[] plainTextWithSaltBytes =
              new byte[_plainText.Count + _salt.Count];

            for (int i = 0; i < _plainText.Count; i++)
            {
                plainTextWithSaltBytes[i] = _plainText[i];
            }
            for (int i = 0; i < _salt.Count; i++)
            {
                plainTextWithSaltBytes[_plainText.Count + i] = _salt[i];
            }

            return algorithm.ComputeHash(plainTextWithSaltBytes);
        }

        public static string GetEnumDescription(Enum value)
        {
            FieldInfo field = value.GetType().GetField(value.ToString());

            DescriptionAttribute[] attributes =
                (DescriptionAttribute[]) field.GetCustomAttributes(typeof (DescriptionAttribute), false);

            if (attributes.Length > 0)
            {
                return attributes[0].Description;
            }

            return value.ToString();
        }

    }
}