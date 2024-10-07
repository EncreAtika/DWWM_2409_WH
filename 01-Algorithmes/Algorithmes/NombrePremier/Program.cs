/* Lire un nombre N et déterminer s'il est un nombre premier.
  Un nombre premier n'est divisible que par 1 et lui même */

namespace NombrePremier
{
    internal class Program

    {
        static void Main(string[] args)
        {
           int nombreSaisi;
           int mystere = 0;          

            Console.WriteLine("Veuillez entrer un nombre : " );
            nombreSaisi = int.Parse(Console.ReadLine());
            Console.WriteLine();

            if (nombreSaisi == 1)
            {
                Console.WriteLine(" Le nombre " + nombreSaisi + " n'est pas un nombre premier");
            }

            else if (nombreSaisi == 2) 
            {
                Console.WriteLine(" Le nombre " + nombreSaisi + " est un nombre premier");
            }
                 
            for (int i = 2; i < nombreSaisi ; i++ )
            {              
                if (nombreSaisi % i == 0)
                {
                mystere++;                     
                }           
            }

            if (mystere > 0) 
            { 
                Console.WriteLine(" Le nombre " + nombreSaisi + " n'est pas un nombre premier"); 
            }

            else 
            {
                Console.WriteLine(" Le nombre " + nombreSaisi + " est un nombre premier");
            }
        }
    }
}

// Merci à Rémi pour ses explications
