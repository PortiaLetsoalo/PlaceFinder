using PlaceFinder.ViewModels;
using Xamarin.Forms;

namespace PlaceFinder.Views
{
    public partial class PlacesPage
    {
        public PlacesPage()
        {
            InitializeComponent();
        }

        private void OnSearchBarTextChanged(object sender, TextChangedEventArgs e)
        {
            var viewModel = BindingContext as PlacesViewModel;
            if (string.IsNullOrWhiteSpace(e.NewTextValue))
            {
                viewModel.ClearSearchResults();
            }
        }

        private void OnItemTapped(object sender, ItemTappedEventArgs e)
        {
            if (sender is ListView listView)
            {
                listView.SelectedItem = null;
            }
        }


    }
}