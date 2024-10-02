
/* Créer une fonction "capitalCity()" qui accepte un argument de type string (le pays dont on cherche la capitale).
 * Elle devra retourner le nom de la capitale des pays suivants :
 * France => Paris
 * Allemagne => Berlin
 * Italie => Rome
 * Maroc =< Rabat
 * Espagne => Madrid
 * Portugal => Lisbonne
 * Angleterre =< Londres
 * Si le pays ne fait pas partie de la liste ci dessus, la fonction retourne la valeur "Capitale inconnue".
 * NOTE : Utiliser ka structure SWITCH pour faire cet exercice.
 */
namespace LesCapitales
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string? pays;
            string capital;

            Console.WriteLine("Saisissez un nom de pays");
            pays = Console.ReadLine();

            capital = CapitalCity(pays);

            Console.WriteLine(capital);

        }

        static string CapitalCity(string _pays)
        {

            if (_pays == "France")
            {
                return "Paris";
            }
            else if (_pays == "Allemagne")
            {
                return "Berlin";
            }
            else
            {
                return "Capital inconnue";
            }
        }
            /*
            switch (_pays)
            {
                case "France":
                    return "Paris";
                    break;
                case "Allemagne":
                    return "Berlin";
                    break;
                default:
                    return "Capitale inconnue";
           
            }
            */
        }
    }
