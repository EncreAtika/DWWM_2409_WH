using WafaeTools;
internal class Program
{
    private static void Main(string[] args)
    {
        Console.WriteLine("TriDeNombres");

        // VARIABLES

        int numA;
        int numB;
        int numC;
        int[] nombres;
        string saisieUtilisateur;

        /* TRAITEMENT 
   
        Console.WriteLine("Entrez le premier nombre");
        saisieUtilisateur = Console.ReadLine(); // Récupération d'une saisie utilisateur
        numA = int.Parse(saisieUtilisateur);

        Console.WriteLine("Entrez le deuxième nombre");
        saisieUtilisateur = Console.ReadLine();
        numB = int.Parse(saisieUtilisateur);

        Console.WriteLine("Entrez le troisième nombre");
        saisieUtilisateur = Console.ReadLine();
        numC = int.Parse(saisieUtilisateur);

        Les trois blocs ci dessus sont remplacés par les trois lignes suivantes (ConsoleTools/WafaeTools).
        */

        numA = ConsoleTools.DemanderNombreEntier("Entrez le premier nombre");
        numB = ConsoleTools.DemanderNombreEntier("Entrez le premier nombre");
        numC = ConsoleTools.DemanderNombreEntier("Entrez le premier nombre");

        nombres = [numA, numB, numC];

         Array.Sort(nombres);

         // AFFICHAGE

            for (int i = 0; i < nombres.Length; i++)
            {
                Console.Write(nombres[i] + " ");
            }
            Console.ReadLine();
    }
}
