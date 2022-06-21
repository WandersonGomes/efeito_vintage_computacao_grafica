% CARREGA A IMAGEM %
imagem = imread("imagem.png");

% EXTRAI OS CANAIS (Vermelho + Verde = Amarelo)%
canalVermelho = imagem(:,:,1);
canalVerde = imagem(:,:,2);

canalAzul = imagem(:,:,3);

% TAXAS DE REALCE %
taxaRealceVermelho = 1.2;
taxaRealceVerde = 1.3;

taxaRealceAzul = 1.0;

% GERA NOVOS VALORES PARA OS CANAIS%
saidaVermelho = canalVermelho * taxaRealceVermelho;
saidaVerde = canalVerde * taxaRealceVerde;
saidaAzul = canalAzul * taxaRealceAzul;

% CONCATENA OS 3 CANAIS - SAIDA %
saida = cat(3, saidaVermelho, saidaVerde, saidaAzul);

% APRESENTA O RESULTADO %

% antes %
figure;
imshow(imagem);

% depois %
figure;
imshow(saida);

% SALVA A IMAGEM %
imwrite(imagem, "resultado_processamento.png");
