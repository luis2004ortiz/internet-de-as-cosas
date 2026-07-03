% Analisis de la Grafica 4 - Potencia

readChannelID = 3410710;
PotenciaFieldID = 4;
readAPIKey = '';

potencia = thingSpeakRead(readChannelID,...
    'Fields',PotenciaFieldID,...
    'NumPoints',50,...
    'ReadKey',readAPIKey);

potencia = potencia(~isnan(potencia));

promedioPotencia = mean(potencia);
maxPotencia = max(potencia);
minPotencia = min(potencia);

disp('===== ANALISIS DE POTENCIA =====')
disp(['Promedio: ', num2str(promedioPotencia), ' W'])
disp(['Maximo: ', num2str(maxPotencia), ' W'])
disp(['Minimo: ', num2str(minPotencia), ' W'])
