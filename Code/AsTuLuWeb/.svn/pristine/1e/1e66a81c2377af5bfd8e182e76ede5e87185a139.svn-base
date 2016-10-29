using System.Collections.Generic;
using AsTuLuWebProject.Database;

namespace AsTuLuWebProject.Models.Interfaces
{
    public interface IEditorRepository
    {
        IEnumerable<Editor> GetEditors();

        Editor GetEditorByID(int editorID);

        Editor GetEditorByName(string editorName);
        
        List<EditorModel> ListEditorsByBookId(int bookID);

        void AddEditor(Editor editor);

        void DeleteEditor(int editorID);

    }
}