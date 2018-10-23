using QRCoder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using Bitmap = System.Drawing.Bitmap;

namespace QrGenerator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Image qrImage_;
        private TextBox qrText_;
        private TextBox qrFilename_;
        private Bitmap bitmap_;
        private Slider qrSlider_;
        private Label pixels_;
        private QRCodeGenerator qrGenerator_;

        public MainWindow()
        {
            InitializeComponent();
            qrImage_ = (Image)FindName("QrImage");
            qrText_ = (TextBox)FindName("QrText");
            qrFilename_ = (TextBox)FindName("QrFilename");
            qrSlider_ = (Slider)FindName("QrSlider");
            pixels_ = (Label)FindName("PixelsLabel");
            qrGenerator_ = new QRCodeGenerator();
        }

        private void Clear_Qr(object sender, RoutedEventArgs e)
        {
            qrImage_.Source = null;
        }

        private void Generate_Qr(object sender, RoutedEventArgs e)
        {
            QRCodeData qrCodeData = qrGenerator_.CreateQrCode(qrText_.Text, QRCodeGenerator.ECCLevel.H);
            QRCode qrCode = new QRCode(qrCodeData);
            bitmap_ = qrCode.GetGraphic(40);

            var handle = bitmap_.GetHbitmap();

            qrImage_.Source = Imaging.CreateBitmapSourceFromHBitmap(handle, IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromEmptyOptions());
        }

        private void Save_Qr(object sender, RoutedEventArgs e)
        {
            if (qrFilename_.Text.Length > 0)
            {
                if (qrImage_.Source != null)
                {
                    bitmap_.Save(qrFilename_.Text + ".png");
                    MessageBox.Show("Successfuly Saved!");
                    qrFilename_.Clear();
                }
                else
                {
                    MessageBox.Show("There is no QR Image");
                }
            }
            else
            {
                MessageBox.Show("Invalid filename");
            }
        }

        private void Slider_Move(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            
        }
    }
}
