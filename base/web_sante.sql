DROP DATABASE IF EXISTS websante;

CREATE DATABASE IF NOT EXISTS websante;
USE websante;
# -----------------------------------------------------------------------------
#       TABLE : NEPHROLOGUE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS NEPHROLOGUE
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   COD_SUIVI CHAR(32) NULL  ,
   NOM VARCHAR(128) NULL  ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : PERSONEL
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PERSONEL
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   ID_ADMIN BIGINT(4) NOT NULL  ,
   NOM VARCHAR(128) NULL  ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PERSONEL
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PERSONEL_ADMIN
     ON PERSONEL (ID_ADMIN ASC);

# -----------------------------------------------------------------------------
#       TABLE : FAMILLE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS FAMILLE
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   NOM VARCHAR(128) NULL  ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : ADMIN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADMIN
 (
   ID_ADMIN BIGINT(4) NOT NULL Auto_increment,
   NOM_ADMIN VARCHAR(128) NULL  ,
   MDP CHAR(32) NULL
   , PRIMARY KEY (ID_ADMIN) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : COORDINATRICE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COORDINATRICE
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   MDP CHAR(255) NULL  ,
   NOM VARCHAR(128) NULL  ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : PHARMACIE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PHARMACIE
 (
   ID BIGINT(11) NOT NULL Auto_increment,
   NOM VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   COORD CHAR(32) NULL  ,
   NUM_PHARM CHAR(32) NULL  
   , PRIMARY KEY (ID) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : MATERIEL
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS MATERIEL
 (
   ID_MAT BIGINT(4) NOT NULL Auto_increment,
   NOM_MAT CHAR(32) NULL  ,
   NOMBR BIGINT(4) NULL  ,
   TYPE CHAR(32) NULL  
   , PRIMARY KEY (ID_MAT) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : PATIENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PATIENT
 (
   ID_PATIENT BIGINT(11) NOT NULL Auto_increment,
   ID_PROFIL BIGINT(11) NOT NULL  ,
   NOM_PATIENT CHAR(255) NULL  ,
   PRENOM CHAR(255) NULL  ,
   COORD_PATIENT CHAR(255) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   ZONE CHAR(255) NULL  ,
   SECUR_SOC CHAR(32) NULL  ,
   TEL_PATIENT CHAR(32) NULL  ,
   TEL_FILLE CHAR(32) NULL  ,
   TEL_VOISIN CHAR(32) NULL  ,
   MOB_PATIENT CHAR(32) NULL  ,
   MOB_FILLE CHAR(32) NULL  ,
   MOB_FILS CHAR(32) NULL  ,
   EMAIL_PATIENT VARCHAR(128) NULL  ,
   EMAIL_FILLE VARCHAR(128) NULL  ,
   EMAIL_FILS VARCHAR(128) NULL  ,
   DATE_POSE DATE NULL  ,
   DATE_DP DATE NULL  ,
   DAT_CHNGM_EXT DATE NULL  ,
   DAT_VISIT DATE NULL  ,
   DAT_INVENT DATE NULL  ,
   DAT_INTERVENTION DATE NULL  ,
   NUM_CYCL VARCHAR(128) NULL  ,
   NUM_MODEM VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PATIENT) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PATIENT
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PATIENT_COORDINATRICE
     ON PATIENT (ID_PROFIL ASC);

# -----------------------------------------------------------------------------
#       TABLE : ORDONANCE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ORDONANCE
 (
   ID_ORD BIGINT(11) NOT NULL Auto_increment,
   DATE DATETIME NULL  ,
   MOTIF TEXT NULL  ,
   FLUCTUANT DECIMAL(10,2) NULL  ,
   VOLUM_INJECTION DECIMAL(10,2) NULL  
   , PRIMARY KEY (ID_ORD) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : INFIRMIER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS INFIRMIER
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   NOM VARCHAR(128) NULL ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : PRODUIT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PRODUIT
 (
   ID_PROD BIGINT(11) NOT NULL Auto_increment,
   NOM_PROD VARCHAR(128) NULL  ,
   REF CHAR(32) NULL  ,
   TYPE CHAR(32) NULL  ,
   EN_STOCK BIGINT(11) NULL  ,
   CARTON BIGINT(11) NULL  ,
   QTE BIGINT(4) NULL  ,
   STOCK_MIN BIGINT(4) NULL  ,
   SORTIE_MENSUEL BIGINT(4) NULL  ,
   COMMENT TEXT NULL  ,
   DATE_CREATION DATE NULL  
   , PRIMARY KEY (ID_PROD) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : BIOMEDICAL
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS BIOMEDICAL
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   NOM VARCHAR(128) NULL  ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : LIVREUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LIVREUR
 (
   ID_PROFIL BIGINT(11) NOT NULL Auto_increment,
   NOM VARCHAR(128) NULL  ,
   PRENOM VARCHAR(128) NULL  ,
   COORD VARCHAR(128) NULL  ,
   CP_VILLE VARCHAR(128) NULL  ,
   TEL CHAR(32) NULL  ,
   MOB CHAR(32) NULL  ,
   EMAIL VARCHAR(128) NULL  
   , PRIMARY KEY (ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       TABLE : SURVEILLER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SURVEILLER
 (
   ID_PROFIL BIGINT(11) NOT NULL  ,
   ID_MAT BIGINT(4) NOT NULL  
   , PRIMARY KEY (ID_PROFIL,ID_MAT) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE SURVEILLER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_SURVEILLER_BIOMEDICAL
     ON SURVEILLER (ID_PROFIL ASC);

CREATE  INDEX I_FK_SURVEILLER_MATERIEL
     ON SURVEILLER (ID_MAT ASC);

# -----------------------------------------------------------------------------
#       TABLE : CONSULTER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CONSULTER
 (
   ID_PATIENT BIGINT(11) NOT NULL  ,
   ID_PROFIL BIGINT(11) NOT NULL  
   , PRIMARY KEY (ID_PATIENT,ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE CONSULTER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_CONSULTER_PATIENT
     ON CONSULTER (ID_PATIENT ASC);

CREATE  INDEX I_FK_CONSULTER_NEPHROLOGUE
     ON CONSULTER (ID_PROFIL ASC);

# -----------------------------------------------------------------------------
#       TABLE : LIVRER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LIVRER
 (
   ID_PROD BIGINT(11) NOT NULL  ,
   ID_PATIENT BIGINT(11) NOT NULL  ,
   ID_PROFIL BIGINT(11) NOT NULL  ,
   STATUT CHAR(32) NULL  ,
   DATE_LIVRE CHAR(32) NULL  ,
   QTE BIGINT(4) NULL  
   , PRIMARY KEY (ID_PROD,ID_PATIENT,ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE LIVRER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_LIVRER_PRODUIT
     ON LIVRER (ID_PROD ASC);

CREATE  INDEX I_FK_LIVRER_PATIENT
     ON LIVRER (ID_PATIENT ASC);

CREATE  INDEX I_FK_LIVRER_LIVREUR
     ON LIVRER (ID_PROFIL ASC);

# -----------------------------------------------------------------------------
#       TABLE : APPARTENIR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS APPARTENIR
 (
   ID_PROFIL BIGINT(11) NOT NULL  ,
   ID_PATIENT BIGINT(11) NOT NULL  
   , PRIMARY KEY (ID_PROFIL,ID_PATIENT) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE APPARTENIR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_APPARTENIR_FAMILLE
     ON APPARTENIR (ID_PROFIL ASC);

CREATE  INDEX I_FK_APPARTENIR_PATIENT
     ON APPARTENIR (ID_PATIENT ASC);

# -----------------------------------------------------------------------------
#       TABLE : AVOIR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS AVOIR
 (
   ID_ORD BIGINT(11) NOT NULL  ,
   ID_PATIENT BIGINT(11) NOT NULL  
   , PRIMARY KEY (ID_ORD,ID_PATIENT) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE AVOIR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_AVOIR_ORDONANCE
     ON AVOIR (ID_ORD ASC);

CREATE  INDEX I_FK_AVOIR_PATIENT
     ON AVOIR (ID_PATIENT ASC);

# -----------------------------------------------------------------------------
#       TABLE : PRESCRIRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PRESCRIRE
 (
   ID_ORD BIGINT(11) NOT NULL  ,
   ID_PROD BIGINT(11) NOT NULL  ,
   ID_PROFIL BIGINT(11) NOT NULL  ,
   QTE BIGINT(11) NULL  
   , PRIMARY KEY (ID_ORD,ID_PROD,ID_PROFIL) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PRESCRIRE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PRESCRIRE_ORDONANCE
     ON PRESCRIRE (ID_ORD ASC);

CREATE  INDEX I_FK_PRESCRIRE_PRODUIT
     ON PRESCRIRE (ID_PROD ASC);

CREATE  INDEX I_FK_PRESCRIRE_NEPHROLOGUE
     ON PRESCRIRE (ID_PROFIL ASC);

# -----------------------------------------------------------------------------
#       TABLE : CONTENIR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CONTENIR
 (
   ID BIGINT(11) NOT NULL  ,
   ID_PROD BIGINT(11) NOT NULL  
   , PRIMARY KEY (ID,ID_PROD) 
 ) 
 ENGINE=InnoDB DEFAULT CHARSET=utf8;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE CONTENIR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_CONTENIR_PHARMACIE
     ON CONTENIR (ID ASC);

CREATE  INDEX I_FK_CONTENIR_PRODUIT
     ON CONTENIR (ID_PROD ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE NEPHROLOGUE 
  ADD FOREIGN KEY FK_NEPHROLOGUE_PERSONEL (ID_PROFIL)
      REFERENCES PERSONEL (ID_PROFIL) ;


ALTER TABLE PERSONEL 
  ADD FOREIGN KEY FK_PERSONEL_ADMIN (ID_ADMIN)
      REFERENCES ADMIN (ID_ADMIN) ;


ALTER TABLE FAMILLE 
  ADD FOREIGN KEY FK_FAMILLE_PERSONEL (ID_PROFIL)
      REFERENCES PERSONEL (ID_PROFIL) ;


ALTER TABLE COORDINATRICE 
  ADD FOREIGN KEY FK_COORDINATRICE_PERSONEL (ID_PROFIL)
      REFERENCES PERSONEL (ID_PROFIL) ;


ALTER TABLE PATIENT 
  ADD FOREIGN KEY FK_PATIENT_COORDINATRICE (ID_PROFIL)
      REFERENCES COORDINATRICE (ID_PROFIL) ;


ALTER TABLE INFIRMIER 
  ADD FOREIGN KEY FK_INFIRMIER_PERSONEL (ID_PROFIL)
      REFERENCES PERSONEL (ID_PROFIL) ;


ALTER TABLE BIOMEDICAL 
  ADD FOREIGN KEY FK_BIOMEDICAL_PERSONEL (ID_PROFIL)
      REFERENCES PERSONEL (ID_PROFIL) ;


ALTER TABLE LIVREUR 
  ADD FOREIGN KEY FK_LIVREUR_PERSONEL (ID_PROFIL)
      REFERENCES PERSONEL (ID_PROFIL) ;


ALTER TABLE SURVEILLER 
  ADD FOREIGN KEY FK_SURVEILLER_BIOMEDICAL (ID_PROFIL)
      REFERENCES BIOMEDICAL (ID_PROFIL) ;


ALTER TABLE SURVEILLER 
  ADD FOREIGN KEY FK_SURVEILLER_MATERIEL (ID_MAT)
      REFERENCES MATERIEL (ID_MAT) ;


ALTER TABLE CONSULTER 
  ADD FOREIGN KEY FK_CONSULTER_PATIENT (ID_PATIENT)
      REFERENCES PATIENT (ID_PATIENT) ;


ALTER TABLE CONSULTER 
  ADD FOREIGN KEY FK_CONSULTER_NEPHROLOGUE (ID_PROFIL)
      REFERENCES NEPHROLOGUE (ID_PROFIL) ;


ALTER TABLE LIVRER 
  ADD FOREIGN KEY FK_LIVRER_PRODUIT (ID_PROD)
      REFERENCES PRODUIT (ID_PROD) ;


ALTER TABLE LIVRER 
  ADD FOREIGN KEY FK_LIVRER_PATIENT (ID_PATIENT)
      REFERENCES PATIENT (ID_PATIENT) ;


ALTER TABLE LIVRER 
  ADD FOREIGN KEY FK_LIVRER_LIVREUR (ID_PROFIL)
      REFERENCES LIVREUR (ID_PROFIL) ;


ALTER TABLE APPARTENIR 
  ADD FOREIGN KEY FK_APPARTENIR_FAMILLE (ID_PROFIL)
      REFERENCES FAMILLE (ID_PROFIL) ;


ALTER TABLE APPARTENIR 
  ADD FOREIGN KEY FK_APPARTENIR_PATIENT (ID_PATIENT)
      REFERENCES PATIENT (ID_PATIENT) ;


ALTER TABLE AVOIR 
  ADD FOREIGN KEY FK_AVOIR_ORDONANCE (ID_ORD)
      REFERENCES ORDONANCE (ID_ORD) ;


ALTER TABLE AVOIR 
  ADD FOREIGN KEY FK_AVOIR_PATIENT (ID_PATIENT)
      REFERENCES PATIENT (ID_PATIENT) ;


ALTER TABLE PRESCRIRE 
  ADD FOREIGN KEY FK_PRESCRIRE_ORDONANCE (ID_ORD)
      REFERENCES ORDONANCE (ID_ORD) ;


ALTER TABLE PRESCRIRE 
  ADD FOREIGN KEY FK_PRESCRIRE_PRODUIT (ID_PROD)
      REFERENCES PRODUIT (ID_PROD) ;


ALTER TABLE PRESCRIRE 
  ADD FOREIGN KEY FK_PRESCRIRE_NEPHROLOGUE (ID_PROFIL)
      REFERENCES NEPHROLOGUE (ID_PROFIL) ;


ALTER TABLE CONTENIR 
  ADD FOREIGN KEY FK_CONTENIR_PHARMACIE (ID)
      REFERENCES PHARMACIE (ID) ;


ALTER TABLE CONTENIR 
  ADD FOREIGN KEY FK_CONTENIR_PRODUIT (ID_PROD)
      REFERENCES PRODUIT (ID_PROD) ;

