/* Soit un tableau de nombres entier triés par ordre croissant.
    Exemple: [8, 16, 32, 64, 128, 256, 512]
    Chercher si un nombre donné N figure parmi les éléments.
    Si oui, afficher la valeur de l’indice correspondant. Sinon, 
    afficher « Nombre non trouvé ».
*/
internal class Program
{
    private static void Main(string[] args)
    {
        Console.WriteLine("Recherche d'un nombre entier dans untableau :");

        //VARIABLES:

        int[] monTableau = new int[] { 8, 16, 32, 64, 128, 256, 512 };
        int nombreSaisi;
        int theCase = -1;
        bool leNombre = false;

        //TRAITEMENT:

        Console.WriteLine("Veuillez saisir un nombre: ");
        nombreSaisi = int.Parse(Console.ReadLine());

        for (int i = 0; i < monTableau.Length; i++)

        {
            if (nombreSaisi == monTableau[i])

            {
                Console.WriteLine("Le nombre " + nombreSaisi + " figure bien dans notre tableau");
                leNombre = true;

            }
            else
            { 
                Console.WriteLine("Le nombre " + nombreSaisi + " ne figure pas dans notre tableau");
            }


        }
    }
}