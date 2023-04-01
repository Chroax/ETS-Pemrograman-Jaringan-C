#ab -n jumlah_request -c jumlah_konkuren http://localhost:8887/testingab -n jumlah_request -c jumlah_konkuren http://localhost:8887/testing.txt

# Multithread & Multiprocess
ab -n 1000 -c 10 -r http://localhost:8889/
ab -n 1000 -c 50  -r http://localhost:8889/
ab -n 1000 -c 100 -r http://localhost:8889/
ab -n 1000 -c 150 -r http://localhost:8889/
ab -n 1000 -c 200 -r http://localhost:8889/

# Multithread Secure & Multiprocess Secure
ab -n 1000 -c 10 -r -l -k -f TLS1.2 https://localhost:8443/
ab -n 1000 -c 50 -r -l -k -f TLS1.2 https://localhost:8443/
ab -n 1000 -c 100 -r -l -k -f TLS1.2 https://localhost:8443/
ab -n 1000 -c 150 -r -l -k -f TLS1.2 https://localhost:8443/
ab -n 1000 -c 200 -r -l -k -f TLS1.2 https://localhost:8443/