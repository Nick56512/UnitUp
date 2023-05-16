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
        public void CreateCharacteristic(CharacteristicModel model)
        {
            try
            {
                Word._Application word_app = new Word.Application();
                object missing = Type.Missing;
                Word._Document word_doc = word_app.Documents.Add(ref missing, ref missing, ref missing, ref missing);
                Word.Paragraph para = word_doc.Paragraphs.Add(ref missing);
                para.Range.Text = "Кривая хризантемы";
                object filename = "C:\\LabView";
                word_doc.SaveAs(ref filename, ref missing, ref missing,

                    ref missing, ref missing, ref missing, ref missing,

                    ref missing, ref missing, ref missing, ref missing,

                    ref missing, ref missing, ref missing, ref missing,

                    ref missing);
                para.Range.InsertParagraphAfter();
            }
            catch { }
        }
    }
}
