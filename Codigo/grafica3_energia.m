% Analisis de la Grafica 3 - Energia

readChannelID = 3410710;
EnergiaFieldID = 3;
readAPIKey = '';

energia = thingSpeakRead(readChannelID,...
    'Fields',EnergiaFieldID,...
    'NumPoints',50,...
    'ReadKey',readAPIKey);

energia = energia(~isnan(energia));

promedioEnergia = mean(energia);
maxEnergia = max(energia);
minEnergia = min(energia);

disp('===== ANALISIS DE ENERGIA =====')
disp(['Promedio: ', num2str(promedioEnergia), ' kWh'])
disp(['Maximo: ', num2str(maxEnergia), ' kWh'])
disp(['Minimo: ', num2str(minEnergia), ' kWh'])
