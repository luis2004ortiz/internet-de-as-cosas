% Analisis de la Grafica 6 - Factor de Potencia

readChannelID = 3410710;
FactorPotenciaFieldID = 6;
readAPIKey = '';

fp = thingSpeakRead(readChannelID,...
    'Fields',FactorPotenciaFieldID,...
    'NumPoints',50,...
    'ReadKey',readAPIKey);

fp = fp(~isnan(fp));

promedioFP = mean(fp);
maxFP = max(fp);
minFP = min(fp);

disp('===== ANALISIS FACTOR DE POTENCIA =====')
disp(['Promedio: ', num2str(promedioFP)])
disp(['Maximo: ', num2str(maxFP)])
disp(['Minimo: ', num2str(minFP)])
