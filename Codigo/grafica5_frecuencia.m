% Analisis de la Grafica 5 - Frecuencia

readChannelID = 3410710;
FrecuenciaFieldID = 5;
readAPIKey = '';

frecuencia = thingSpeakRead(readChannelID,...
    'Fields',FrecuenciaFieldID,...
    'NumPoints',50,...
    'ReadKey',readAPIKey);

frecuencia = frecuencia(~isnan(frecuencia));

promedioFrecuencia = mean(frecuencia);
maxFrecuencia = max(frecuencia);
minFrecuencia = min(frecuencia);

disp('===== ANALISIS DE FRECUENCIA =====')
disp(['Promedio: ', num2str(promedioFrecuencia), ' Hz'])
disp(['Maximo: ', num2str(maxFrecuencia), ' Hz'])
disp(['Minimo: ', num2str(minFrecuencia), ' Hz'])
