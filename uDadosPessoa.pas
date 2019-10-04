unit uDadosPessoa;

interface

uses
  System.SysUtils;

Type
  Rdados_Pessoa = record
    Altura: Double;
    Peso: Double;
    Sexo: String;
    IMC: String;
end;
    function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;
var
  P_Dados_Pessoa  : Rdados_Pessoa;

implementation
  function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String): String;
  var
  l_IMC: Double;
  l_StrIMC: String;
begin
  if p_Sexo = '' then
  raise Exception.Create('Obrigado a informar o Sexo!');

  try
    l_IMC := p_Peso/(p_Altura*p_Altura);
    if p_Sexo = 'F' then
    begin
      if (l_IMC < 19.1) then
        l_StrIMC := 'Est� abaixo do peso ideal!'
      else if
       (l_IMC >= 19.1) and (l_IMC <= 25.8) then
        l_StrIMC := 'Est� no peso normal!'
        else if
         (l_IMC > 25.8) and (l_IMC <= 27.3) then 
          l_StrIMC := 'Est� marginalmente acima do peso ideal!'
           else if 
            (l_IMC > 27.3) and (l_IMC <= 32.3) then
             l_StrIMC := 'Est� acima do peso ideal!'
             else if
              (l_IMC > 32.3) then
               l_StrIMC := 'Est� obesa!';
    end
  else
  begin
    if p_Sexo = 'M' then 
    begin
      if(l_IMC < 20.7) then
         l_StrIMC := 'Est� abaixo do peso ideal!'
         else if 
          (l_IMC >= 20.7) and (l_IMC <= 26.4) then
           l_StrIMC := 'Est� no peso normal!'
           else if
            (l_IMC > 26.4) and (l_IMC <= 27.8) then
             l_StrIMC := 'Est� marginalmente acima do peso ideal!'
             else if
              (l_IMC > 27.8) and (l_IMC <= 31.1) then
               l_StrIMC := 'Est� acima do peso ideal!'
               else if
               (l_IMC > 31.1) then
                l_StrIMC := 'Est� obeso!';
    end;
  end;
       Result := l_StrIMC;
       
  except 
    raise Exception.Create('Erro ao c�lcular o �ndice do IMC!');   
  end;
end;

end.
