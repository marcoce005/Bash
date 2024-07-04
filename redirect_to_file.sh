#! /bin/bash

# rindirizziamo l'output di un comando in file per una lettura migliore


echo "Ciro vive a Napoli" > file.txt		# > write in file

echo "ma ora ruba gli orologi" >> file.txt	# >> append in file

# per prendere input dall'utente si può fare nel seguente modo

cat > input_utente.txt		# ctrl + c per fermare l'inserimento
