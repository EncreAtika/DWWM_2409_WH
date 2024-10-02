using System.ComponentModel.Design;
using System.Diagnostics;

namespace IntervalleEntre2Nombres
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int A;
            int B;
           
            Console.WriteLine("Bonjour, Veuillez saisir un premier nombre : ");
            A = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("");
            
            Console.WriteLine("Maintenant, Saisissez un second nombre : ");
            B = Convert.ToInt32(Console.ReadLine());    
            Console.WriteLine("");

            Console.WriteLine(" Merci, les nombres compris entre " + A + " et " + B + " sont : ");
            if (A < B)
            {
                for (int i = A + 1; i < B; i++)
                {
                    Console.WriteLine(i);
                }
            }
            else
            {
                for (int i = A - 1; i > B; i--)
                {
                    Console.WriteLine(i);
                }
                }
            }
        }
    }

