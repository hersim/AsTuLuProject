﻿using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using AstuluProject.Models.Database;
using AstuluProject.Models.Interfaces;

namespace AstuluProject.Models.Interfaces.DAL
{
    public class EditorRepository : IEditorRepository
    {
        private readonly AsTuLusEntities DbContext;

        private bool Disposed = false;

        public EditorRepository(AsTuLusEntities context)
        {
            DbContext = context;
        }

        public IEnumerable<Editor> GetEditors()
        {
            return DbContext.Editor.ToList();
        }

        public Editor GetEditorByID(int editorID)
        {
            return DbContext.Editor.Find(editorID);
        }

        public Editor GetEditorByName(string editorName)
        {
            return DbContext.Editor.FirstOrDefault(_x => _x.EditorName == editorName);
        }

        public void AddEditor(Editor editor)
        {
            DbContext.Editor.Add(editor);

            DbContext.Entry(editor).State = System.Data.EntityState.Added;
        }

        public void DeleteEditor(int editorID)
        {
            Editor editorToDelete = DbContext.Editor.Find(editorID);

            DbContext.Editor.Remove(editorToDelete);

            DbContext.Entry(editorToDelete).State = System.Data.EntityState.Deleted;
        }

        public void UpdateEditor(Editor editor)
        {
            DbContext.Entry(editor).State = System.Data.EntityState.Modified;
        }

        public void Save()
        {
            try
            {
                DbContext.SaveChanges();
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var dbValidationError in dbEx.EntityValidationErrors.
                    SelectMany(dbEntityValidationResult => dbEntityValidationResult.ValidationErrors))
                {
                    Trace.TraceInformation("Property: {0} Error: {1}", dbValidationError.PropertyName, dbValidationError.ErrorMessage);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!Disposed)
            {
                if (disposing)
                {
                    DbContext.Dispose();
                }
            }
            Disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}