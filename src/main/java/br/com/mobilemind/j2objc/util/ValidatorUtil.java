
package br.com.mobilemind.j2objc.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Classe utilitaria para formataÃ§Ã£o de docuentos
 *
 * @author Ricardo Bocchi
 */
public class ValidatorUtil {

    private static final int[] pesoCPF = {11, 10, 9, 8, 7, 6, 5, 4, 3, 2};
    private static final int[] pesoCNPJ = {6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2};
    private static final String EMAIL_REGEX = "^[\\w-]+(\\.[\\w-]+)*@([\\w-]+\\.)+[a-zA-Z]{2,7}$";

    private static int calcularDigito(String str, int[] peso) {
        int soma = 0;
        for (int indice = str.length() - 1, digito; indice >= 0; indice--) {
            digito = Integer.parseInt(str.substring(indice, indice + 1));
            soma += digito * peso[peso.length - str.length() + indice];
        }
        soma = 11 - soma % 11;
        return soma > 9 ? 0 : soma;
    }

    public static boolean isValidCPF(String cpf) {
        if ((cpf == null) || (cpf.length() != 11)) {
            return false;
        }

        Integer digito1 = calcularDigito(cpf.substring(0, 9), pesoCPF);
        Integer digito2 = calcularDigito(cpf.substring(0, 9) + digito1, pesoCPF);
        return cpf.equals(cpf.substring(0, 9) + digito1.toString() + digito2.toString());
    }

    public static boolean isValidCNPJ(String cnpj) {
        if ((cnpj == null) || (cnpj.length() != 14)) {
            return false;
        }

        Integer digito1 = calcularDigito(cnpj.substring(0, 12), pesoCNPJ);
        Integer digito2 = calcularDigito(cnpj.substring(0, 12) + digito1, pesoCNPJ);
        return cnpj.equals(cnpj.substring(0, 12) + digito1.toString() + digito2.toString());
    }

    public static boolean isValidEmail(String email) {
        //Definir a seqÃ¼Ãªncia de padrÃ£o de e-mail
        Pattern p = Pattern.compile(EMAIL_REGEX);
        //Pattern p = Pattern.compile(EMAIL_REGEX2);

        // Match Joga seqÃ¼Ãªncia de dados com o padrÃ£o
        Matcher m = p.matcher(email);

        // Verifica se o Match jogado foi encontrado
        return m.matches();
    }
}
