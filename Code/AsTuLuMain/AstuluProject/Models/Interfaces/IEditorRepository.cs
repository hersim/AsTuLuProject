using System;
using System.Collections.Generic;
using AstuluProject.Models.Database;

namespace AstuluProject.Models.Interfaces
{
    public interface IEditorRepository : IDisposable
    {
        IEnumerable<Editor> GetEditors();

        Editor GetEditorByID(int editorID);

        Editor GetEditorByName(string editorName);

        void AddEditor(Editor editor);

        void DeleteEditor(int editorID);

        void UpdateEditor(Editor editor);

        void Save();
    }
}