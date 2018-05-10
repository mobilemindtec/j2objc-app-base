package br.com.mobilemind.j2objc.payments;

import br.com.mobilemind.j2objc.util.AppUtil;

import java.util.HashMap;
import java.util.Map;

/**

 https://pt.stackoverflow.com/questions/3715/expressÃ£o-regular-para-detectar-a-bandeira-do-cartÃ£o-de-crÃ©dito
 https://gist.github.com/erikhenrique/5931368

 PayZen

 Cielo: visa, mastercard, visa elÃ©ctron, maestro, elo, amex, diners, discover, jcb e aura
 REDE: visa, mastercard, visa elÃ©ctron, maestro, diners, hiper, hipercard e jcb
 GetNet: visa e mastercad
 FirstData: visa, mastercad, caba e sorocred
 Stone: visa e mastercad
 Global Payments: visa e mastercad

 bandeiras de debito (VISA_ELECTRON e MAESTRO) somente com autenticacao 3DS

 */


public class CardSupport {

    public static String getBandeira(String numero){

        if(numero == null)
            return null;

        numero = AppUtil.filterNumber(numero);
        Map<String, String> values = new HashMap(){{
            put("VISA", "^4[0-9]{12}(?:[0-9]{3})");
            put("MASTERCARD", "^5[1-5][0-9]{14}");
            put("AMEX", "^3[47][0-9]{13}");
            put("JCB", "^(?:2131|1800|35\\d{3})\\d{11}");
            put("DINERS", "^3(?:0[0-5]|[68][0-9])[0-9]{11}");
            put("DISCOVER", "^6(?:011|5[0-9]{2})[0-9]{12}");
            put("ELO", "^((((636368)|(438935)|(504175)|(451416)|(636297))\\d{0,10})|((5067)|(4576)|(4011))\\d{0,12})$");
            put("HIPERCARD", "^(606282\\d{10}(\\d{3})?)|(3841\\d{15})$");
        }};

        for(Map.Entry<String, String> entry : values.entrySet()){
            if(numero.matches(entry.getValue())){
                return  entry.getKey();
            }
        }

        return  null;
    }


}