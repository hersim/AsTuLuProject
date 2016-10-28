using AsTuLuWebProject_prog.Database;

namespace AsTuLuWebProject_prog.Models
{
    public class BookByEditorModel
    {
        public BookByEditorModel(BookByEditor bookByEditor)
        {
            BookByEditorId = bookByEditor.BookByEditorId;
            BookID = bookByEditor.BookID;
            EditorID = bookByEditor.EditorID;
        }

        public int BookByEditorId { get; set; }
        public int BookID { get; set; }
        public int EditorID { get; set; }

        public BookModel Book { get; set; }
        public EditorModel Editor { get; set; }
    }
}
