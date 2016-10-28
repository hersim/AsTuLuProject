﻿using System.Collections.Generic;
using System.Data;
using System.Linq;
using AsTuLuWebProject_prog.Database;
using AsTuLuWebProject_prog.Models;
using AsTuLuWebProject_prog.Repositories;

namespace AsTuLuWebProject_prog.DAL
{
    public class EditorRepository : IEditorRepository
    {
        public IEnumerable<Editor> GetEditors()
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Editor.ToList();    
            }
        }

        public Editor GetEditorByID(int editorID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Editor.First(item => item.EditorID == editorID);    
            }
        }

        public Editor GetEditorByName(string editorName)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                return context.Editor.FirstOrDefault(_x => _x.EditorName == editorName);    
            }
        }

        public List<EditorModel> ListEditorsByBookId(int bookID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                List<EditorModel> listToReturn = new List<EditorModel>();

                IQueryable<BookByEditor> editQry = from ed in context.BookByEditor
                                                   where ed.BookID == bookID
                                                   select ed;

                if (editQry.Any())
                {
                    foreach (BookByEditor edit in editQry)
                    {
                        listToReturn.Add(new EditorModel(edit.Editor));
                    }
                }

                return listToReturn;
            }
            
        }

        public void AddEditor(Editor editor)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                context.Editor.Add(editor);

                context.Entry(editor).State = EntityState.Added;

                context.SaveChanges();
            }
        }

        public void DeleteEditor(int editorID)
        {
            using (AsTuLusEntities context = new AsTuLusEntities())
            {
                Editor editorToDelete = context.Editor.Find(editorID);

                context.Editor.Remove(editorToDelete);

                context.Entry(editorToDelete).State = EntityState.Deleted;

                context.SaveChanges();
            }
        }
        
    }
}