from flask import Flask, request
import mysql.connector

# será o endereço da base e informações de conexão, necessário alterar de acordo com o ambiente
db = mysql.connector.connect(
    host='localhost',
    user='adm',
    password='adm123',
    database='BaseItau'
)

app = Flask(__name__)

@app.route('/', methods=['POST'])
def index():
    
    idColaborador = request.form.get('idColaborador')
    print(idColaborador)
    
    cursor = db.cursor()
    
    cursor.execute('SELECT * FROM colaborador')
    resConsulta = cursor.fetchall()
    
    dados = list()
    for dado in resConsulta:
        dados.append(
            {
                "idColaborador": dado[0],
	            "dataInicio": str(dado[1]),
	            "dataFim": str(dado[2]),
	            "transactionNbr": dado[3],
	            "tipoLicenca": dado[4],
                "tipoBeneficio": dado[5],
	            "dataPericia": str(dado[6]),
            	"dataRetorno": str(dado[7]),
                "horarioPericia": str(dado[8]),
                "localPericia": dado[9],
                "numeroBeneficio": dado[10],
                "numeroRequerimento": dado[11],
                "dataProtocoloRequerimento": str(dado[12]),
	            "tipoEspecie": dado[13],
	            "decisaoPericiaINSS": dado[14],
	            "dataBeneficioConcedidoAte": str(dado[15]),
	            "dataIniciodePagamento": str(dado[16]),
	            "valorRendaMensalINSS": dado[17],
	            "indicativoAposentadoria": dado[18]
            }
        )
    
    return {'cadastros': dados}, 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
    
