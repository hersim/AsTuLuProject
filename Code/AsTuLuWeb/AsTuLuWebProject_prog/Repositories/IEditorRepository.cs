using System.Collections.Generic;
using AsTuLuWebProject_prog.Database;
using AsTuLuWebProject_prog.Models;

namespace AsTuLuWebProject_prog.Repositories
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