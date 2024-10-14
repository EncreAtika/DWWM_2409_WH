namespace LaFourchette
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("La fourchette");

            int nMystere = new Random().Next(0, 101);
            int fMax = 100;
            int fMin = 0;
            int choixUtilisateur;
            int nbEssais = 0;
            bool gagne;
            bool cOk;


            do
            {
                nbEssais++;

                do
                {
                    Console.WriteLine("Saisissez un nombre : ");
                    cOk = int.TryParse(Console.ReadLine(), out choixUtilisateur);
                    if (!cOk)
                    {
                        Console.WriteLine(" Ce n'est pas un nombre, veuillez recommencer !");
                    }
                }
                while (!cOk);


                if (choixUtilisateur < nMystere)
                {
                    fMin = choixUtilisateur;
                    Console.WriteLine("Votre nombre est plus petit que le nombre mystère, le bon nombre se situe entre : " + fMin + " et " + fMax + " .");
                    gagne = false;
                }
                else if (choixUtilisateur > nMystere)
                {
                    fMax = choixUtilisateur;
                    Console.WriteLine($"Votre nombre est plus grand que le nombre mystère, le bon nombre se situe entre :{fMin} et {fMax} .");
                    gagne = false;

                }

            }
            while (choixUtilisateur != nMystere);

            Console.WriteLine("Bravo, vous avez trouvé au bout de " + nbEssais + " essai !");


        }
    }
}



