using ClassLibraryDuLepidoptere;

namespace ConsoleAppDuLepidoptere
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Lepidoptere lepi = new Lepidoptere("Bombyx");
            Console.WriteLine(lepi.Bonjour());
            lepi.SeDeplacer();
            lepi.SeMetamorphoser();
            lepi.SeDeplacer();
            lepi.SeMetamorphoser();
            lepi.SeDeplacer();
            lepi.SeMetamorphoser();
            lepi.SeDeplacer();
            lepi.SeMetamorphoser();


            int i = 0;
        }
    }
}
