using Microsoft.Office.Interop.Word;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Word = Microsoft.Office.Interop.Word;

namespace GroupManager.Models
{
    public class CharacteristicManager
    {
        public void CreateCharacteristic(CharacteristicModel model,object filename)
        {
            try
            {
                Word._Application word_app = new Word.Application();
                object missing = Type.Missing;
                Word._Document word_doc = word_app.Documents.Add(ref missing, ref missing, ref missing, ref missing);
                Word.Paragraph para = word_doc.Paragraphs.Add(ref missing);

                string old_font = para.Range.Font.Name;
                para.Range.Font.Bold = 700;
                para.Range.Font.Size = 14;
                para.Range.Font.Name = "Times New Roman";

                para.Range.Text = "\t\t\t\tХАРАКТЕРИСТИКА";
                para.Range.InsertParagraphAfter();

                para.Range.Font.Size = 14;
                para.Range.Font.Name = "Times New Roman";

                para.Range.Text = "\t\t\t\t"+model.Name+" "+model.Lastname+" "+model.Patronymic;



                word_doc.SaveAs(ref filename, ref missing, ref missing,

                    ref missing, ref missing, ref missing, ref missing,

                    ref missing, ref missing, ref missing, ref missing,

                    ref missing, ref missing, ref missing, ref missing,

                    ref missing);
                para.Range.InsertParagraphAfter();
                object save_changes = false;
                word_doc.Close(ref save_changes, ref missing, ref missing);
                word_app.Quit(ref save_changes, ref missing, ref missing);
            }
            catch { }
        }
    }
}
