	<jsp:include page="../../plantillas/head.jsp"></jsp:include>
	<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

	<link rel="stylesheet" href="font/font-awesome-4.3.0/css/font-awesome.min.css">
	
	<!-- Contenido principal de la pagina  -->
	<section id="declaracion_de_variables">
	
		<script>
		
			//Declaracion de variables globales
			var cantidad1 = 45;
			var cantidad2 = 20;
			
			function sumar(parametro1, parametro2)
			{
				var resultado;
				resultado = parametro1 + parametro2;
				return resultado;
			}
			
			//definir operaciones para la calculadora
			const SUMAR			= 0;
			const RESTAR		= 1;
			const MULTIPLICAR	= 2;
			const DIVIDIR		= 3;
			const MODULO		= 4;
			
			//operaciones para el primer parametro
			const INCREMENTO 	= 5;
			const DECREMENTO 	= 6;
			const ES_PAR 		= 7;
			
			//Calcula la operacion solicitada para los dos parametros
			function calculadora(p1, p2, op)
			{
				var resultado = null;
				
				switch(op)
				{
					case 0:
					{
						resultado = p1 + p2;
						break;
					}
					case 1:
					{
						resultado = p1 - p2;
						break;
					}
					case 2:
					{
						resultado = p1 * p2;
						break;
					}
					case 3:
					{
						resultado = p1 / p2;
						break;
					}
					case 4:
					{
						resultado = p1 % p2;
						break;
					}
					case 5:
					{
						resultado = p1 + 1;
						break;
					}
					case 6:
					{
						resultado = p1 - 1;
						break;
					}
					case 7:
					{
						if (p1%2==0)
						{
							resultado = true;	
						}
						else
						{
							resultado = false;
						}
						break;
					}
				}
				
				return resultado;
			}
			
			console.info('El \'resultado\':\n\t es igual a: ' + sumar(1, 3));
			console.info('\nCalculadora \n');
			console.info('\t5+6='	+	calculadora(5,   6, SUMAR));
			console.info('\t10-67='	+	calculadora(10, 67, RESTAR));
			console.info('\t8 decremento='	+	calculadora(8, 0, DECREMENTO));
			console.info('\t5 es_par?='	+	calculadora(5, 0, ES_PAR));
			
		</script>

	</section>
	   
	<jsp:include page="../../plantillas/footer.jsp"></jsp:include>