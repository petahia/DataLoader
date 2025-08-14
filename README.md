**DataLoader Project**

The following project was created to retrieve data from a data base stored on a pod in openshift, receive a query and return the data to a table in a DataFrame cube.
The file structure is:

.
├── Dockerfile
├── README.md
├── infrastructure
      └── k8s
│          ├── Deployment.yaml
│    └── service.yaml
├── requirements.txt
├── scripts
│   ├── commands.bat
│   ├── creatre_table.sql
│   └── insert_data.sql
└── services
    └── data_loader
        ├── API_server.py
        └── DAL_conenct.py

6 directories, 10 files

