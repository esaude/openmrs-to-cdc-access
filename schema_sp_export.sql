-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.17-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema export_db
--

CREATE DATABASE IF NOT EXISTS export_db;
USE export_db;

--
-- Definition of table `t_aconselhamento`
--

DROP TABLE IF EXISTS `t_aconselhamento`;
CREATE TABLE `t_aconselhamento` (
  `idaconselhamento` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(50) DEFAULT NULL,
  `criteriosmedicos` varchar(50) DEFAULT NULL,
  `conceitos` tinyint(1) DEFAULT NULL,
  `interessado` tinyint(1) DEFAULT NULL,
  `confidente` tinyint(1) DEFAULT NULL,
  `apareceregularmente` tinyint(1) DEFAULT NULL,
  `riscopobreaderencia` tinyint(1) DEFAULT NULL,
  `regimetratamento` tinyint(1) DEFAULT NULL,
  `prontotarv` tinyint(1) DEFAULT NULL,
  `datapronto` datetime DEFAULT NULL,
  `obs` text,
  `encounter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idaconselhamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_aconselhamento`
--

/*!40000 ALTER TABLE `t_aconselhamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_aconselhamento` ENABLE KEYS */;


--
-- Definition of table `t_actividadeaconselhamento`
--

DROP TABLE IF EXISTS `t_actividadeaconselhamento`;
CREATE TABLE `t_actividadeaconselhamento` (
  `idaconselhamento` int(11) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `nrsessao` int(11) DEFAULT NULL,
  `tipoactividade` varchar(50) DEFAULT NULL,
  `apresentouconfidente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_actividadeaconselhamento`
--

/*!40000 ALTER TABLE `t_actividadeaconselhamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_actividadeaconselhamento` ENABLE KEYS */;


--
-- Definition of table `t_adulto`
--

DROP TABLE IF EXISTS `t_adulto`;
CREATE TABLE `t_adulto` (
  `nid` varchar(50) NOT NULL,
  `codprofissao` varchar(50) DEFAULT NULL,
  `codnivel` varchar(50) DEFAULT NULL,
  `nrconviventes` varchar(50) DEFAULT NULL,
  `codestadocivil` varchar(50) DEFAULT NULL,
  `nrconjuges` varchar(50) DEFAULT NULL,
  `serologiaHivconjuge` varchar(50) DEFAULT NULL,
  `Nrprocesso` varchar(50) DEFAULT NULL,
  `outrosparceiros` varchar(50) DEFAULT NULL,
  `nrfilhos` int(11) DEFAULT NULL,
  `nrfilhostestados` int(11) DEFAULT NULL,
  `nrfilhoshiv` int(11) DEFAULT NULL,
  `tabaco` tinyint(4) DEFAULT NULL,
  `alcool` tinyint(4) DEFAULT NULL,
  `droga` tinyint(4) DEFAULT NULL,
  `nrparceiros` int(11) DEFAULT NULL,
  `antecedentesgenelogicos` longtext,
  `datamestruacao` datetime DEFAULT NULL,
  `aborto` tinyint(4) DEFAULT NULL,
  `ptv` tinyint(4) DEFAULT NULL,
  `ptvquais` varchar(50) DEFAULT NULL,
  `gravida` tinyint(4) DEFAULT NULL,
  `semanagravidez` int(11) DEFAULT NULL,
  `dataprevistoparto` datetime DEFAULT NULL,
  `puerpera` tinyint(4) DEFAULT NULL,
  `dataparto` varchar(50) DEFAULT NULL,
  `tipoaleitamento` varchar(50) DEFAULT NULL,
  `Alergiamedicamentos` varchar(50) DEFAULT NULL,
  `Alergiasquais` longtext,
  `Antecedentestarv` tinyint(4) DEFAULT NULL,
  `antecedentesquais` longtext,
  `exposicaoacidental` varchar(30) DEFAULT NULL,
  `tipoacidente` longtext,
  `historiaactual` longtext,
  `hipotesedediagnostico` longtext,
  `codkarnosfsky` int(11) DEFAULT NULL,
  `geleira` tinyint(4) DEFAULT NULL,
  `electricidade` tinyint(4) DEFAULT NULL,
  `sexualidade` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `codestadocivil` (`codestadocivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_adulto`
--

/*!40000 ALTER TABLE `t_adulto` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adulto` ENABLE KEYS */;


--
-- Definition of table `t_afinidade`
--

DROP TABLE IF EXISTS `t_afinidade`;
CREATE TABLE `t_afinidade` (
  `afinidade` varchar(255) NOT NULL,
  PRIMARY KEY (`afinidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_afinidade`
--

/*!40000 ALTER TABLE `t_afinidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_afinidade` ENABLE KEYS */;


--
-- Definition of table `t_antecedentesclinicospaciente`
--

DROP TABLE IF EXISTS `t_antecedentesclinicospaciente`;
CREATE TABLE `t_antecedentesclinicospaciente` (
  `codantecendentes` varchar(50) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `datadiagnostico` datetime DEFAULT NULL,
  `observacao` varchar(50) DEFAULT NULL,
  `Estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codantecendentes`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_antecedentesclinicospaciente`
--

/*!40000 ALTER TABLE `t_antecedentesclinicospaciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_antecedentesclinicospaciente` ENABLE KEYS */;


--
-- Definition of table `t_buscaactiva`
--

DROP TABLE IF EXISTS `t_buscaactiva`;
CREATE TABLE `t_buscaactiva` (
  `nid` varchar(50) NOT NULL,
  `datacomecoufaltar` datetime NOT NULL,
  `dataentregaactivista` datetime DEFAULT NULL,
  `pacientelocalizado` varchar(50) DEFAULT NULL,
  `datalocalizacao` datetime DEFAULT NULL,
  `codmotivoabandono` varchar(50) DEFAULT NULL,
  `codreferencia` varchar(50) DEFAULT NULL,
  `entregueconvite` varchar(50) DEFAULT NULL,
  `parceiroenvolvido` varchar(50) DEFAULT NULL,
  `familiaenvolvida` varchar(50) DEFAULT NULL,
  `parceiroemtratamento` varchar(50) DEFAULT NULL,
  `confidenteidentificado` varchar(50) DEFAULT NULL,
  `Codinformacaodadapor` varchar(50) DEFAULT NULL,
  `Codservicoquerefere` varchar(50) DEFAULT NULL,
  `dataprimeiratentativa` datetime DEFAULT NULL,
  `datasegundatentativa` datetime DEFAULT NULL,
  `dataterceiratentativa` datetime DEFAULT NULL,
  `Observacao` longtext,
  `codprofissional` int(11) DEFAULT NULL,
  `tipovisita` varchar(255) DEFAULT NULL,
  `esqueceudata` tinyint(4) DEFAULT NULL,
  `estadecama` tinyint(4) DEFAULT NULL,
  `problemadetransporte` tinyint(4) DEFAULT NULL,
  `faltaalimentacao` tinyint(4) DEFAULT NULL,
  `ausenciadoprofissional` tinyint(4) DEFAULT NULL,
  `mauatendimento` tinyint(4) DEFAULT NULL,
  `busca_efeitossecundarios` tinyint(4) DEFAULT NULL,
  `tratamentotradicional` tinyint(4) DEFAULT NULL,
  `desistiu` tinyint(4) DEFAULT NULL,
  `outromotivo` varchar(255) DEFAULT NULL,
  `estabem` tinyint(4) DEFAULT NULL,
  `dificulades` tinyint(4) DEFAULT NULL,
  `dificuldadefamilia` tinyint(4) DEFAULT NULL,
  `dificuldadeefeitossecundarios` tinyint(4) DEFAULT NULL,
  `faltadeapoio` tinyint(4) DEFAULT NULL,
  `dificuldadetomamedicamento` tinyint(4) DEFAULT NULL,
  `naoreveloudiagnostico` tinyint(4) DEFAULT NULL,
  `naoencontradopor` varchar(255) DEFAULT NULL,
  `outromotivonaoencontrado` varchar(255) DEFAULT NULL,
  `outroencaminhamento` varchar(255) DEFAULT NULL,
  `dataentregacartao` datetime DEFAULT NULL,
  `dataentregaconvite` datetime DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`,`datacomecoufaltar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_buscaactiva`
--

/*!40000 ALTER TABLE `t_buscaactiva` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_buscaactiva` ENABLE KEYS */;


--
-- Definition of table `t_contacto`
--

DROP TABLE IF EXISTS `t_contacto`;
CREATE TABLE `t_contacto` (
  `idcontacto` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcontacto`),
  KEY `idcontacto` (`idcontacto`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_contacto`
--

/*!40000 ALTER TABLE `t_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_contacto` ENABLE KEYS */;


--
-- Definition of table `t_crianca`
--

DROP TABLE IF EXISTS `t_crianca`;
CREATE TABLE `t_crianca` (
  `nid` varchar(50) NOT NULL,
  `tipoparto` varchar(50) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `termo` varchar(30) DEFAULT NULL,
  `pesonascimento` varchar(50) DEFAULT NULL,
  `exposicaotarvmae` varchar(30) DEFAULT NULL,
  `exposicaotarvnascenca` varchar(30) DEFAULT NULL,
  `patologianeonatal` varchar(50) DEFAULT NULL,
  `injeccoes` varchar(30) DEFAULT NULL,
  `escarificacoes` varchar(30) DEFAULT NULL,
  `extracoesdentarias` varchar(30) DEFAULT NULL,
  `aleitamentomaterno` varchar(30) DEFAULT NULL,
  `aleitamentoexclusivo` varchar(30) DEFAULT NULL,
  `idadedesmame` int(11) DEFAULT NULL,
  `pavcompleto` varchar(30) DEFAULT NULL,
  `idadecronologica` varchar(50) DEFAULT NULL,
  `bailey` varchar(50) DEFAULT NULL,
  `idmae` int(11) DEFAULT NULL,
  `idpai` int(11) DEFAULT NULL,
  `observacao` longtext,
  `patient_id` int(11) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `idadecronologica` (`idadecronologica`),
  KEY `idadedesmame` (`idadedesmame`),
  KEY `idmae` (`idmae`),
  KEY `idpai` (`idpai`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_crianca`
--

/*!40000 ALTER TABLE `t_crianca` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_crianca` ENABLE KEYS */;


--
-- Definition of table `t_diagnosticoseguimento`
--

DROP TABLE IF EXISTS `t_diagnosticoseguimento`;
CREATE TABLE `t_diagnosticoseguimento` (
  `idseguimento` int(11) NOT NULL,
  `coddiagnostico` varchar(50) NOT NULL,
  `observacao` longtext,
  `Nid` varchar(255) DEFAULT NULL,
  `Data` datetime DEFAULT NULL,
  PRIMARY KEY (`idseguimento`,`coddiagnostico`),
  KEY `coddiagnostico` (`coddiagnostico`),
  KEY `data` (`Data`),
  KEY `idseguimento` (`idseguimento`),
  KEY `t_diagnosticoseguimentonid` (`Nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_diagnosticoseguimento`
--

/*!40000 ALTER TABLE `t_diagnosticoseguimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_diagnosticoseguimento` ENABLE KEYS */;


--
-- Definition of table `t_esposicaotarvmae`
--

DROP TABLE IF EXISTS `t_esposicaotarvmae`;
CREATE TABLE `t_esposicaotarvmae` (
  `nid` varchar(50) DEFAULT NULL,
  `tarv` varchar(50) DEFAULT NULL,
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_esposicaotarvmae`
--

/*!40000 ALTER TABLE `t_esposicaotarvmae` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_esposicaotarvmae` ENABLE KEYS */;


--
-- Definition of table `t_esposicaotarvnascenca`
--

DROP TABLE IF EXISTS `t_esposicaotarvnascenca`;
CREATE TABLE `t_esposicaotarvnascenca` (
  `nid` varchar(50) DEFAULT NULL,
  `tarv` varchar(50) DEFAULT NULL,
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_esposicaotarvnascenca`
--

/*!40000 ALTER TABLE `t_esposicaotarvnascenca` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_esposicaotarvnascenca` ENABLE KEYS */;


--
-- Definition of table `t_estadopaciente`
--

DROP TABLE IF EXISTS `t_estadopaciente`;
CREATE TABLE `t_estadopaciente` (
  `codestado` varchar(50) NOT NULL,
  `designacao` varchar(50) DEFAULT NULL,
  `Activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`codestado`),
  KEY `codestado` (`codestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_estadopaciente`
--

/*!40000 ALTER TABLE `t_estadopaciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_estadopaciente` ENABLE KEYS */;


--
-- Definition of table `t_gaac`
--

DROP TABLE IF EXISTS `t_gaac`;
CREATE TABLE `t_gaac` (
  `hdd` varchar(50) DEFAULT NULL,
  `numGAAC` int(11) NOT NULL,
  `datainicio` datetime DEFAULT NULL,
  `afinidade` varchar(255) DEFAULT NULL,
  `dataDesintegracao` datetime DEFAULT NULL,
  `nidPontoFocal` varchar(255) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numGAAC`),
  KEY `{74AD1F0E-011B-482D-A4CC-8F3380B3CC13}` (`afinidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_gaac`
--

/*!40000 ALTER TABLE `t_gaac` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gaac` ENABLE KEYS */;


--
-- Definition of table `t_gaac_actividades`
--

DROP TABLE IF EXISTS `t_gaac_actividades`;
CREATE TABLE `t_gaac_actividades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(255) DEFAULT NULL,
  `dataInscricao` datetime DEFAULT NULL,
  `dataSaida` datetime DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `numGAAC` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `{4EDA4D29-DD1B-47BA-9B79-C3D8F8FEDC29}` (`numGAAC`),
  KEY `nid` (`nid`),
  KEY `numGAAC` (`numGAAC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_gaac_actividades`
--

/*!40000 ALTER TABLE `t_gaac_actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gaac_actividades` ENABLE KEYS */;


--
-- Definition of table `t_hdd`
--

DROP TABLE IF EXISTS `t_hdd`;
CREATE TABLE `t_hdd` (
  `HdD` varchar(50) NOT NULL,
  `designacao` varchar(50) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  `Distrito` varchar(50) DEFAULT NULL,
  `dataabertura` datetime DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`HdD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_hdd`
--

/*!40000 ALTER TABLE `t_hdd` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_hdd` ENABLE KEYS */;


--
-- Definition of table `t_histestadopaciente`
--

DROP TABLE IF EXISTS `t_histestadopaciente`;
CREATE TABLE `t_histestadopaciente` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(50) DEFAULT NULL,
  `codestado` varchar(50) DEFAULT NULL,
  `dataestado` datetime DEFAULT NULL,
  `destinopaciente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `codestado` (`codestado`),
  KEY `dataestado` (`dataestado`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_histestadopaciente`
--

/*!40000 ALTER TABLE `t_histestadopaciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_histestadopaciente` ENABLE KEYS */;


--
-- Definition of table `t_infeccoesoportunisticaseguimento`
--

DROP TABLE IF EXISTS `t_infeccoesoportunisticaseguimento`;
CREATE TABLE `t_infeccoesoportunisticaseguimento` (
  `idseguimento` int(11) NOT NULL,
  `estadiooms` varchar(50) NOT NULL,
  `codigoio` varchar(50) NOT NULL,
  `Nid` varchar(255) DEFAULT NULL,
  `Data` datetime DEFAULT NULL,
  PRIMARY KEY (`idseguimento`,`estadiooms`,`codigoio`),
  KEY `idseguimento` (`idseguimento`),
  KEY `Nid` (`Nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_infeccoesoportunisticaseguimento`
--

/*!40000 ALTER TABLE `t_infeccoesoportunisticaseguimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_infeccoesoportunisticaseguimento` ENABLE KEYS */;


--
-- Definition of table `t_mae`
--

DROP TABLE IF EXISTS `t_mae`;
CREATE TABLE `t_mae` (
  `idmae` int(11) NOT NULL AUTO_INCREMENT,
  `idade` varchar(50) DEFAULT NULL,
  `vivo` varchar(50) DEFAULT NULL,
  `doente` varchar(50) DEFAULT NULL,
  `doenca` varchar(50) DEFAULT NULL,
  `codprofissao` varchar(50) DEFAULT NULL,
  `resultadohiv` varchar(50) DEFAULT NULL,
  `emtarv` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmae`),
  KEY `idade` (`idade`),
  KEY `nid` (`idmae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_mae`
--

/*!40000 ALTER TABLE `t_mae` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mae` ENABLE KEYS */;


--
-- Definition of table `t_observacaopaciente`
--

DROP TABLE IF EXISTS `t_observacaopaciente`;
CREATE TABLE `t_observacaopaciente` (
  `idobservacao` int(11) NOT NULL AUTO_INCREMENT,
  `codobservacao` varchar(50) DEFAULT NULL,
  `codestado` varchar(50) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `medico` int(11) DEFAULT NULL,
  `Observacao` longtext,
  PRIMARY KEY (`idobservacao`),
  UNIQUE KEY `idobservacao` (`idobservacao`),
  KEY `codestado` (`codestado`),
  KEY `codobservacao` (`codobservacao`),
  KEY `data` (`data`),
  KEY `medico` (`medico`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_observacaopaciente`
--

/*!40000 ALTER TABLE `t_observacaopaciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_observacaopaciente` ENABLE KEYS */;


--
-- Definition of table `t_paciente`
--

DROP TABLE IF EXISTS `t_paciente`;
CREATE TABLE `t_paciente` (
  `hdd` varchar(50) DEFAULT NULL,
  `dataabertura` datetime DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `datanasc` datetime DEFAULT NULL,
  `idade` double DEFAULT NULL,
  `meses` int(11) DEFAULT NULL,
  `coddistrito` varchar(50) DEFAULT NULL,
  `codproveniencia` varchar(50) DEFAULT NULL,
  `designacaoprov` varchar(50) DEFAULT NULL,
  `Codigoproveniencia` varchar(255) DEFAULT NULL,
  `emtarv` tinyint(4) DEFAULT NULL,
  `datainiciotarv` datetime DEFAULT NULL,
  `codregime` varchar(50) DEFAULT NULL,
  `codestado` varchar(50) DEFAULT NULL,
  `destinopaciente` varchar(100) DEFAULT NULL,
  `datasaidatarv` datetime DEFAULT NULL,
  `datadiagnostico` datetime DEFAULT NULL,
  `aconselhado` tinyint(4) DEFAULT NULL,
  `referidocd` tinyint(4) DEFAULT NULL,
  `estadiooms` varchar(255) DEFAULT NULL,
  `emtratamentotb` tinyint(4) DEFAULT NULL,
  `DataCD` datetime DEFAULT NULL,
  `referidohdd` varchar(255) DEFAULT NULL,
  `datareferidohdd` datetime DEFAULT NULL,
  `aceitabuscaactiva` varchar(50) DEFAULT NULL,
  `dataaceitabuscaactiva` datetime DEFAULT NULL,
  `referidobuscaactiva` varchar(50) DEFAULT NULL,
  `datareferenciabuscaactiva` datetime DEFAULT NULL,
  `situacaohiv` varchar(50) DEFAULT NULL,
  `observacao` longtext,
  `Educacaoprevencao` varchar(255) DEFAULT NULL,
  `transfOutraUs` varchar(255) DEFAULT NULL,
  `dataElegibilidadeInicioTarv` datetime DEFAULT NULL,
  `apssDisponivel` varchar(255) DEFAULT NULL,
  `apssFormaContacto` varchar(255) DEFAULT NULL,
  `apssQuemInformouSeroestado` varchar(255) DEFAULT NULL,
  `apssconheceestadoparceiro` varchar(255) DEFAULT NULL,
  `PatientID` varchar(255) DEFAULT NULL,
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `tipopaciente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nid` (`nid`) USING BTREE,
  KEY `codestado` (`codestado`),
  KEY `dataabertura` (`dataabertura`),
  KEY `datainiciotarv` (`datainiciotarv`),
  KEY `idade` (`idade`),
  KEY `PatientID` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_paciente`
--

/*!40000 ALTER TABLE `t_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paciente` ENABLE KEYS */;


--
-- Definition of table `t_pai`
--

DROP TABLE IF EXISTS `t_pai`;
CREATE TABLE `t_pai` (
  `idpai` int(11) NOT NULL AUTO_INCREMENT,
  `idade` varchar(50) DEFAULT NULL,
  `vivo` varchar(50) DEFAULT NULL,
  `doente` varchar(50) DEFAULT NULL,
  `doenca` varchar(50) DEFAULT NULL,
  `codprofissao` varchar(50) DEFAULT NULL,
  `resultadohiv` varchar(50) DEFAULT NULL,
  `emtarv` varchar(50) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpai`),
  KEY `idade` (`idade`),
  KEY `nid` (`idpai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_pai`
--

/*!40000 ALTER TABLE `t_pai` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pai` ENABLE KEYS */;


--
-- Definition of table `t_questionariotb`
--

DROP TABLE IF EXISTS `t_questionariotb`;
CREATE TABLE `t_questionariotb` (
  `codopcao` varchar(255) NOT NULL,
  `estadoopcao` tinyint(4) DEFAULT NULL,
  `nid` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `Observacao` longtext,
  PRIMARY KEY (`codopcao`,`nid`,`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_questionariotb`
--

/*!40000 ALTER TABLE `t_questionariotb` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_questionariotb` ENABLE KEYS */;


--
-- Definition of table `t_resultadoslaboratorio`
--

DROP TABLE IF EXISTS `t_resultadoslaboratorio`;
CREATE TABLE `t_resultadoslaboratorio` (
  `idresultado` int(11) NOT NULL AUTO_INCREMENT,
  `codexame` varchar(50) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `dataresultado` datetime DEFAULT NULL,
  `codparametro` varchar(50) DEFAULT NULL,
  `resultado` double DEFAULT NULL,
  `obs` longtext,
  `datapedido` datetime DEFAULT NULL,
  `notificoufamilia` varchar(255) DEFAULT NULL,
  `dataProximoControlCd4` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idresultado`),
  KEY `codexame` (`codexame`),
  KEY `dataresultado` (`dataresultado`),
  KEY `idresultado` (`idresultado`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_resultadoslaboratorio`
--

/*!40000 ALTER TABLE `t_resultadoslaboratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_resultadoslaboratorio` ENABLE KEYS */;


--
-- Definition of table `t_seguimento`
--

DROP TABLE IF EXISTS `t_seguimento`;
CREATE TABLE `t_seguimento` (
  `idseguimento` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(50) DEFAULT NULL,
  `idade` double DEFAULT NULL,
  `meses` double DEFAULT NULL,
  `estadohiv` varchar(50) DEFAULT NULL,
  `dataseguimento` datetime DEFAULT NULL,
  `estadiooms` varchar(50) DEFAULT NULL,
  `dataproximaconsulta` datetime DEFAULT NULL,
  `aleitamentomaterno` varchar(255) DEFAULT NULL,
  `idadedesmame` int(11) DEFAULT NULL,
  `Gravidez` int(11) DEFAULT NULL,
  `screeningtb` varchar(30) DEFAULT NULL,
  `Observacao` longtext,
  `screeningIts` varchar(255) DEFAULT NULL,
  `aconselhado` varchar(255) DEFAULT NULL,
  `referidoSectorClinico` varchar(255) DEFAULT NULL,
  `gravida` varchar(255) DEFAULT NULL,
  `dum` varchar(255) DEFAULT NULL,
  `dpp` varchar(255) DEFAULT NULL,
  `PTV_TARV` varchar(255) DEFAULT NULL,
  `sintomasTb` varchar(255) DEFAULT NULL,
  `dataParto` datetime DEFAULT NULL,
  `sexoseguimento` varchar(255) DEFAULT NULL,
  `apssdatavisita` datetime DEFAULT NULL,
  `pp1` tinyint(4) DEFAULT NULL,
  `pp2` tinyint(4) DEFAULT NULL,
  `pp3` tinyint(4) DEFAULT NULL,
  `pp4` tinyint(4) DEFAULT NULL,
  `pp5` tinyint(4) DEFAULT NULL,
  `pp6` tinyint(4) DEFAULT NULL,
  `pp7` tinyint(4) DEFAULT NULL,
  `apssTipovisita` varchar(255) DEFAULT NULL,
  `apssAdesao` varchar(255) DEFAULT NULL,
  `apssActividade` varchar(255) DEFAULT NULL,
  `apssproximavisita` datetime DEFAULT NULL,
  `lactante` tinyint(4) DEFAULT NULL,
  `localSeguimento` varchar(255) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idseguimento`),
  KEY `dataproximaconsulta` (`dataproximaconsulta`),
  KEY `dataseguimento` (`dataseguimento`),
  KEY `estadohiv` (`estadohiv`),
  KEY `idade` (`idade`),
  KEY `idadedesmame` (`idadedesmame`),
  KEY `idseguimento` (`idseguimento`),
  KEY `nid` (`nid`),
  KEY `screeningtb` (`screeningtb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_seguimento`
--

/*!40000 ALTER TABLE `t_seguimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_seguimento` ENABLE KEYS */;


--
-- Definition of table `t_tarv`
--

DROP TABLE IF EXISTS `t_tarv`;
CREATE TABLE `t_tarv` (
  `idtarv` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(50) DEFAULT NULL,
  `datatarv` datetime DEFAULT NULL,
  `codregime` varchar(50) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `tipotarv` varchar(50) DEFAULT NULL,
  `codmudanca` varchar(50) DEFAULT NULL,
  `dataproxima` datetime DEFAULT NULL,
  `observacao` longtext,
  `QtdComp` int(11) DEFAULT NULL,
  `QtdSaldo` int(11) DEFAULT NULL,
  `dataoutroservico` datetime DEFAULT NULL,
  `embalageensaviadas` int(11) DEFAULT NULL,
  `saldoembalagens` int(11) DEFAULT NULL,
  `efeitosSecundarios` varchar(255) DEFAULT NULL,
  `dataexpirareceita` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `compromido` varchar(255) DEFAULT NULL,
  `compromido1` varchar(255) DEFAULT NULL,
  `compromido2` varchar(255) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `dose1` varchar(255) DEFAULT NULL,
  `dose2` varchar(255) DEFAULT NULL,
  `motivoInicioTarv` varchar(255) DEFAULT NULL,
  `linhaTerapeutica` varchar(255) DEFAULT NULL,
  `encounter_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtarv`),
  UNIQUE KEY `idtarv` (`idtarv`),
  UNIQUE KEY `unique_key` (`nid`,`datatarv`,`codregime`),
  KEY `codregime` (`codregime`),
  KEY `datatarv` (`datatarv`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_tarv`
--

/*!40000 ALTER TABLE `t_tarv` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tarv` ENABLE KEYS */;


--
-- Definition of table `t_tratamentoseguimento`
--

DROP TABLE IF EXISTS `t_tratamentoseguimento`;
CREATE TABLE `t_tratamentoseguimento` (
  `idseguimento` int(11) DEFAULT NULL,
  `codtratamento` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `observacao` longtext,
  `datafimtratamento` datetime DEFAULT NULL,
  `servico` varchar(255) DEFAULT NULL,
  KEY `codtratamento` (`codtratamento`),
  KEY `data` (`data`),
  KEY `datafimtratamento` (`datafimtratamento`),
  KEY `idseguimento` (`idseguimento`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_tratamentoseguimento`
--

/*!40000 ALTER TABLE `t_tratamentoseguimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tratamentoseguimento` ENABLE KEYS */;


--
-- Definition of table `t_tratamentotb`
--

DROP TABLE IF EXISTS `t_tratamentotb`;
CREATE TABLE `t_tratamentotb` (
  `nid` varchar(50) NOT NULL,
  `data` datetime NOT NULL,
  `Observacao` longtext,
  `datafim` datetime DEFAULT NULL,
  `servico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nid`,`data`),
  KEY `data` (`data`),
  KEY `datafim` (`datafim`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_tratamentotb`
--

/*!40000 ALTER TABLE `t_tratamentotb` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tratamentotb` ENABLE KEYS */;


--
-- Definition of table `t_void_duplo`
--

DROP TABLE IF EXISTS `t_void_duplo`;
CREATE TABLE `t_void_duplo` (
  `encounter_id` int(11) NOT NULL,
  PRIMARY KEY (`encounter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_void_duplo`
--

/*!40000 ALTER TABLE `t_void_duplo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_void_duplo` ENABLE KEYS */;


--
-- Definition of procedure `EXPORTDB`
--

DROP PROCEDURE IF EXISTS `EXPORTDB`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `EXPORTDB`()
    READS SQL DATA
BEGIN

CALL FillTHDD();

CALL FillTPacienteTable();

CALL FillProcessoParteA();

CALL FillTSeguimento();

CALL FillTarvTable();

CALL FillObservacaopaciente();

CALL FillHistestadopaciente();

CALL FillGaacTBusca();

CALL FillExposicaoTARV();

CALL FillAconselhamentoTable();

CALL FillAntecedentesclinicospaciente();

CALL FillTratamentoTb();
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillAconselhamentoTable`
--

DROP PROCEDURE IF EXISTS `FillAconselhamentoTable`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillAconselhamentoTable`()
    READS SQL DATA
BEGIN

truncate table t_aconselhamento;
truncate table t_actividadeaconselhamento;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

/*Acrescentar a coluna encounter_id na tabela t_aconselhamento*/
INSERT INTO t_aconselhamento (nid,encounter_id)
SELECT 	nid,encounter_id
FROM 	t_paciente p
		inner join openmrs.encounter e on p.patient_id=e.patient_id
WHERE 	nid IS NOT NULL and e.encounter_type in (19,29) and e.voided=0 and e.encounter_datetime<=@dateFinal;



UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then 'SIM'
					when 1066 then 'NAO'
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1248 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.criteriosmedicos=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;

UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1729 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.conceitos=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;

UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1736 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.interessado=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;

UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1739 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.confidente=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;


UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1743 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.apareceregularmente=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;


UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1749 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.riscopobreaderencia=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;


UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1752 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.regimetratamento=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;

UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				case o.value_coded
					when 1065 then true
					when 1066 then false
				end as fieldUpdate,
				case o.value_coded
					when 1065 then o.obs_datetime
				else null end as datapronto
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1756 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.prontotarv=updateTable.fieldUpdate,
	t_aconselhamento.datapronto=updateTable.datapronto
where t_aconselhamento.encounter_id=updateTable.encounter_id;

UPDATE t_aconselhamento,
	(	SELECT 	o.person_id,
				e.encounter_id,
				o.value_text as fieldUpdate
		FROM 	openmrs.encounter e
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		WHERE 	e.encounter_type in (19,29) and o.concept_id=1757 and o.voided=0 and e.voided=0
    ) updateTable
set t_aconselhamento.obs=updateTable.fieldUpdate
where t_aconselhamento.encounter_id=updateTable.encounter_id;

INSERT INTO t_actividadeaconselhamento (idaconselhamento, nid, data)
select idaconselhamento,nid,encounter_datetime
from 	t_aconselhamento ta
		inner join openmrs.encounter e on ta.encounter_id=e.encounter_id;

update t_actividadeaconselhamento,
(
	SELECT 	o.person_id,
			o.encounter_id,
			ta.idaconselhamento,
			o.value_numeric as fieldUpdate
	FROM 	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
			inner join t_aconselhamento ta on ta.encounter_id=e.encounter_id
	WHERE 	e.encounter_type in (19,29) and o.concept_id= 1724 and o.voided=0 and e.voided=0

)updateTable
set t_actividadeaconselhamento.nrsessao=updateTable.fieldUpdate
where t_actividadeaconselhamento.idaconselhamento=updateTable.idaconselhamento;

update t_actividadeaconselhamento,
(
	SELECT 	o.person_id,
			o.encounter_id,
			ta.idaconselhamento,
			case o.value_coded
				when 1725 then 'GRUPO'
				when 1726 then 'INDIVIDUAL'
			end as fieldUpdate
	FROM 	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
			inner join t_aconselhamento ta on ta.encounter_id=e.encounter_id
	WHERE 	e.encounter_type in (19,29) and o.concept_id= 1727 and o.voided=0 and e.voided=0

)updateTable
set t_actividadeaconselhamento.tipoactividade=updateTable.fieldUpdate
where t_actividadeaconselhamento.idaconselhamento=updateTable.idaconselhamento;


update t_actividadeaconselhamento,
(
	SELECT 	o.person_id,
			o.encounter_id,
			ta.idaconselhamento,
			case o.value_coded
				when 1065 then true
				when 1066 then false
			end as fieldUpdate
	FROM 	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
			inner join t_aconselhamento ta on ta.encounter_id=e.encounter_id
	WHERE 	e.encounter_type in (19,29) and o.concept_id= 1728 and o.voided=0 and e.voided=0

)updateTable
set t_actividadeaconselhamento.apresentouconfidente=updateTable.fieldUpdate
where t_actividadeaconselhamento.idaconselhamento=updateTable.idaconselhamento;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillAntecedentesclinicospaciente`
--

DROP PROCEDURE IF EXISTS `FillAntecedentesclinicospaciente`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillAntecedentesclinicospaciente`()
BEGIN

truncate table t_antecedentesclinicospaciente;

INSERT INTO t_antecedentesclinicospaciente (codantecendentes, nid, datadiagnostico, estado)
SELECT DISTINCT
	   cn.name AS codantecedentes,
	   p.nid,
	   o.obs_datetime AS datadiagnostico,
	   CASE o.value_coded
			WHEN 1065 THEN 'SIM'
			WHEN 1066 THEN 'NAO'
			WHEN 1457 THEN 'SEM INFORMACAO'
	   ELSE 'SIM' END AS estado
FROM t_paciente p
	   INNER JOIN openmrs.encounter e ON p.patient_id = e.patient_id
	   INNER JOIN openmrs.obs o ON o.encounter_id = e.encounter_id
			AND e.patient_id = o.person_id
	   INNER JOIN openmrs.concept_name cn ON cn.concept_id = o.concept_id
			AND cn.locale = 'pt' AND cn.concept_name_type = 'FULLY_SPECIFIED'
WHERE e.encounter_type IN (5,7)
			AND o.concept_id in (42, 5042, 836, 5334, 5340, 507,1379, 1380, 1381, 5018, 5339, 5027, 1429,5030,5965,5050,204,1215)
			AND cn.voided = 0
			AND o.voided = 0
			AND e.voided = 0
			AND p.datanasc IS NOT NULL
			AND p.nid IS NOT NULL
			AND e.encounter_datetime = p.dataabertura
group by p.nid,cn.name;
end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillExposicaoTARV`
--

DROP PROCEDURE IF EXISTS `FillExposicaoTARV`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillExposicaoTARV`()
    READS SQL DATA
BEGIN

truncate table t_esposicaotarvmae;
truncate table t_esposicaotarvnascenca;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

INSERT INTO t_esposicaotarvmae (nid, tarv)
SELECT p.nid,tarv.tarv
FROM 	t_paciente p
		INNER JOIN openmrs.encounter e on e.patient_id=p.patient_id
		INNER JOIN
				(
					   SELECT 	DISTINCT 	o.person_id,
											o.encounter_id,
											cn.name AS tarv
					   FROM 	openmrs.obs o
								INNER JOIN openmrs.concept_name cn ON cn.concept_id=o.value_coded AND cn.locale='pt' AND cn.concept_name_type='FULLY_SPECIFIED'
								INNER JOIN openmrs.encounter e ON e.encounter_id=o.encounter_id AND o.person_id=e.patient_id
					   WHERE 	e.encounter_type=7 AND o.concept_id=1504 AND o.value_coded IN (631,797,792,1800,1801,630,628) AND o.voided=0
								AND cn.voided=0 and e.voided=0 and e.encounter_datetime<=@dateFinal
				) tarv ON tarv.person_id=p.patient_id AND tarv.encounter_id=e.encounter_id

WHERE e.encounter_type IN (7) AND e.voided=0 and e.encounter_datetime<=@dateFinal;


INSERT INTO t_esposicaotarvnascenca (nid, tarv)
SELECT p.nid,tarv.tarv
FROM 	t_paciente p
		INNER JOIN openmrs.encounter e ON e.patient_id=p.patient_id
		INNER JOIN
				(
				   SELECT 	DISTINCT 	o.person_id,
										o.encounter_id,
										cn.name AS tarv
				   FROM 	openmrs.obs o
							INNER JOIN openmrs.concept_name cn ON cn.concept_id=o.value_coded AND cn.locale='pt' AND cn.concept_name_type='FULLY_SPECIFIED'
							INNER JOIN openmrs.encounter e ON e.encounter_id=o.encounter_id AND o.person_id=e.patient_id
				   WHERE 	e.encounter_type=7 AND o.concept_id=1503 AND o.value_coded IN (631,797,792,1800,1801,630,628)
							AND o.voided=0 AND cn.voided=0 AND e.voided=0 and e.encounter_datetime<=@dateFinal
			   ) tarv ON tarv.person_id=p.patient_id AND tarv.encounter_id=e.encounter_id
WHERE e.encounter_type IN (7) AND e.voided=0 and e.encounter_datetime<=@dateFinal;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillGaacTBusca`
--

DROP PROCEDURE IF EXISTS `FillGaacTBusca`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillGaacTBusca`()
    READS SQL DATA
begin


set foreign_key_checks=0;

truncate table t_gaac_actividades;
truncate table t_gaac;
truncate table t_afinidade;
truncate table t_buscaactiva;

set foreign_key_checks=1;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

/*Inserir afinidade e t_gaac*/

insert into t_afinidade select name from openmrs.gaac_affinity_type;

/*Inserir t_gaac*/
insert into t_gaac(numGAAC,datainicio,afinidade,datadesintegracao,nidpontofocal)
select gaac_id, start_date,af.name, date_crumbled,nid
from  	openmrs.gaac
		inner join openmrs.gaac_affinity_type af on affinity_type=gaac_affinity_type_id
		left join t_paciente p on p.patient_id=focal_patient_id
where 	gaac.voided=0 and gaac.start_date<=@dateFinal;


/*Inserir t_gaac_actividades*/
insert into t_gaac_actividades(nid,dataInscricao,dataSaida,motivo,numGAAC,observacao)
select 	nid, gm.start_date, gm.end_date,rl.name,t_gaac.numgaac,gm.description
from 	t_paciente p
		inner  join openmrs.gaac_member gm on p.patient_id=gm.member_id
		inner join t_gaac on t_gaac.numgaac=gm.gaac_id
		left join openmrs.gaac_reason_leaving_type rl on gaac_reason_leaving_type_id=reason_leaving_type
where gm.voided=0 and gm.start_date<=@dateFinal;

/*ACTUALIZAR HDD*/
update t_gaac,t_hdd,openmrs.gaac
set t_gaac.hdd=t_hdd.HdD
where t_gaac.numGAAC=gaac.gaac_id and gaac.location_id=t_hdd.location_id;

/*
1. Acrescentar o campo encounter_id,patient_id na tabela t_buscaactiva
Inserir t_buscaactiva*/

insert into t_buscaactiva(nid,datacomecoufaltar,patient_id)
select distinct	p.nid,e.encounter_datetime,e.patient_id
from 	t_paciente p
		inner join openmrs.encounter e on p.patient_id=e.patient_id
where 	e.voided=0 and e.encounter_type=21 and e.encounter_datetime<=@dateFinal;

/*ACTUALIZAR ENCOUNTER_ID*/
update 	t_buscaactiva,openmrs.encounter
set 	t_buscaactiva.encounter_id=encounter.encounter_id
where 	t_buscaactiva.patient_id=encounter.patient_id and t_buscaactiva.datacomecoufaltar=encounter.encounter_datetime and encounter_type=21;

/*Actualizar data primeira tentativa*/
update t_buscaactiva
set t_buscaactiva.dataprimeiratentativa=t_buscaactiva.datacomecoufaltar;

/*Actualizar real data que paciente comecou a faltar
update t_buscaactiva,
		(	SELECT 	o.person_id,e.encounter_id,o.value_datetime as fieldupdate
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2004 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.datacomecoufaltar=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;*/


/*Update Data Entrega Activista*/
update t_buscaactiva,
		(	SELECT 	o.person_id,e.encounter_id,o.value_datetime as dataentregaactivista
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2173 and o.voided=0 and e.voided=0
        ) dataentregaactivista
set 	t_buscaactiva.dataentregaactivista=dataentregaactivista.dataentregaactivista
where 	t_buscaactiva.encounter_id=dataentregaactivista.encounter_id;


/*Actualizar Paciente localizado*/
update t_buscaactiva,
		(	SELECT 	o.person_id,e.encounter_id,
					if(o.value_coded=1065,o.obs_datetime,null) as fieldupdate,
					case o.value_coded
						when 1065 then 'SIM'
						when 1066 then 'NAO'
					else null end as fieldupdate1
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2003 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.pacientelocalizado=updateTable.fieldupdate1,
		t_buscaactiva.datalocalizacao=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*COD MOTIVO ABANDONO*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					case o.value_coded
						when 2005 then 'ESQUECEU A DATA'
						when 2006 then 'ESTA ACAMADO EM CASA'
						when 2007 then 'DISTANCIA/DINHEIRO TRANSPORTE'
						when 2008 then 'PROBLEMAS DE ALIMENTACAO'
						when 2009 then 'PROBLEMAS FAMILIARES'
						when 2010 then 'INSATISFACCAO COM SERVICO NO HDD'
						when 2011 then 'VIAJOU'
						when 2012 then 'DESMOTIVACAO'
						when 2013 then 'TRATAMENTO TRADICIONAL'
						when 2014 then 'TRABALHO'
						when 2015 then 'EFEITOS SECUNDARIOS ARV'
						when 2017 then 'OUTRO'
					else o.value_coded end as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2016 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.codmotivoabandono=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*ENCAMINHAMENTO*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					case o.value_coded
						when 1797 then 'Encaminhado para a US'
						when 1977 then 'Encaminhado para os grupos de apoio'
						when 5488 then 'Orientado sobre a toma correcta dos ARV'
						when 2159 then 'Familiar foi referido para a US'
					else 'OUTRO' end as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=1272 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.codreferencia=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*CONVITE*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					if(o.value_datetime is not null,'SIM','NAO') as fieldupdate1,
					o.value_datetime as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2179 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.entregueconvite=updateTable.fieldupdate1,
		t_buscaactiva.dataentregaconvite=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;

/*CONFIDENTE IDENTIFICADO*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					case o.value_coded
						when 1065 then 'SIM'
						when 1066 then 'NAO'
					else null end as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=1739 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.confidenteidentificado=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*INFORMACAO DADA POR*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					case o.value_coded
						when 2034 then 'Vizinho'
						when 2033 then 'Confidente'
						when 2035 then 'Familiar'
						when 2036 then 'Secretário do Bairro'
					else 'OUTRO' end as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2037 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.codinformacaodadapor=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*SERVICO QUE REFERE*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					case o.value_coded
						when 2175 then 'TARV Adulto'
						when 2174 then 'TARV Pediatrico'
						when 1414 then 'PNCT'
						when 1598 then 'PTV'
					else 'OUTRO' end as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2176 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.Codservicoquerefere=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;

/*Data Segunda Tentativa*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					o.value_datetime as fieldupdate
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=6254 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.datasegundatentativa=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;

/*Data terceira Tentativa*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					o.value_datetime as fieldupdate
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=6255 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.dataterceiratentativa=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;

/*TIPO DE VISITA*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					case o.value_coded
						when 2160 then 'Visita de busca'
						when 2161 then 'Visita de apoio'
					else 'OUTRO' end as fieldupdate
			FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=1981 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.tipovisita=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*Observacao*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					o.value_text as fieldupdate
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2041 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.observacao=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*MOTIVO FALTA*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					if(value_coded=2005,true,null) as esqueceudata,
					if(value_coded=2006,true,null) as estadecama,
					if(value_coded=2007,true,null) as problemadetransporte,
					if(value_coded=2008,true,null) as faltaalimentacao,
					if(value_coded=2010,true,null) as mauatendimento,
					if(value_coded=2015,true,null) as busca_efeitossecundarios,
					if(value_coded=2013,true,null) as tratamentotradicional,
					if(value_coded=2017,true,null) as desistiu
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2016 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.esqueceudata=updateTable.esqueceudata,
		t_buscaactiva.estadecama=updateTable.estadecama,
		t_buscaactiva.problemadetransporte=updateTable.problemadetransporte,
		t_buscaactiva.faltaalimentacao=updateTable.faltaalimentacao,
		t_buscaactiva.mauatendimento=updateTable.mauatendimento,
		t_buscaactiva.busca_efeitossecundarios=updateTable.busca_efeitossecundarios,
		t_buscaactiva.tratamentotradicional=updateTable.tratamentotradicional,
		t_buscaactiva.desistiu=updateTable.desistiu
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;

/*OUTRO MOTIVO*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					o.value_text as fieldupdate
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2017 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.outromotivo=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*RELATORIO DE VISITA*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					if(value_coded=1383,true,null) as estabem,
					if(value_coded=2157,true,null) as dificulades,
					if(value_coded=2156,true,null) as dificuldadefamilia,
					if(value_coded=2015,true,null) as dificuldadeefeitossecundarios,
					if(value_coded=2153,true,null) as faltadeapoio,
					if(value_coded=2154,true,null) as dificuldadetomamedicamento,
					if(value_coded=2155,true,null) as naoreveloudiagnostico
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id in (2158,2157) and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.estabem=updateTable.estabem,
		t_buscaactiva.dificulades=updateTable.dificulades,
		t_buscaactiva.dificuldadefamilia=updateTable.dificuldadefamilia,
		t_buscaactiva.dificuldadeefeitossecundarios=updateTable.dificuldadeefeitossecundarios,
		t_buscaactiva.faltadeapoio=updateTable.faltadeapoio,
		t_buscaactiva.dificuldadetomamedicamento=updateTable.dificuldadetomamedicamento,
		t_buscaactiva.naoreveloudiagnostico=updateTable.naoreveloudiagnostico
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;


/*DATA ENTREGA CARTAO*/
update t_buscaactiva,
		(	SELECT 	o.person_id,
					e.encounter_id,
					o.value_datetime as fieldupdate
            FROM 	openmrs.encounter e
                	inner join openmrs.obs o on e.encounter_id=o.encounter_id and o.person_id=e.patient_id
            WHERE 	e.encounter_type=21 and o.concept_id=2180 and o.voided=0 and e.voided=0
        ) updateTable
set 	t_buscaactiva.dataentregacartao=updateTable.fieldupdate
where 	t_buscaactiva.encounter_id=updateTable.encounter_id;

end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillHistestadopaciente`
--

DROP PROCEDURE IF EXISTS `FillHistestadopaciente`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillHistestadopaciente`()
    READS SQL DATA
BEGIN

truncate table t_histestadopaciente;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

insert into t_histestadopaciente (nid, codestado, dataestado, destinopaciente)
select	p.nid,
		case    o.value_coded
				when 1707 then 'Abandono'
				when 1706 then 'Transferido para'
				when 1366 then 'Morte'
				when 1704 then 'HIV Negativo'
				when 1709 then 'Suspender Tarv'
				else 'Outro' end as codestado,
		e.encounter_datetime as dataestado,
		destino.destinopaciente
from	t_paciente p
		inner join openmrs.encounter e on p.patient_id=e.patient_id
		inner join openmrs.obs o on o.encounter_id=e.encounter_id
		left join	(
						select	e.encounter_id,
								o.value_text as destinopaciente
						from	openmrs.encounter e
								inner join openmrs.obs o on e.encounter_id=o.encounter_id
						where	e.voided=0 and o.voided=0 and e.encounter_type=18 and o.concept_id=2059 and e.encounter_datetime<=@dateFinal
					) destino on e.encounter_id=destino.encounter_id
where	e.encounter_type in (18,6,9) and o.concept_id in (1708,6138) and o.voided=0 and e.voided=0 and p.nid is not null and o.value_coded<>6269 and
		e.encounter_datetime<=@dateFinal;

insert into t_histestadopaciente (nid, codestado, dataestado)
select 	nid,
		case ps.state
			when 7 then 'Transferido para'
			when 8 then 'Suspender Tarv'
			when 9 then 'Abandono'
			when 10 then 'Morte'
		else 'OUTRO' end as estado,
		ps.start_date
from 	t_paciente p
		inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
		inner join openmrs.patient_state ps on pg.patient_program_id=ps.patient_program_id
where 	pg.voided=0 and ps.voided=0 and
		pg.program_id=2 and ps.state in (7,8,9,10) and ps.end_date is not null and ps.start_date<=@dateFinal;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillObservacaopaciente`
--

DROP PROCEDURE IF EXISTS `FillObservacaopaciente`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillObservacaopaciente`()
    READS SQL DATA
BEGIN

truncate table t_observacaopaciente;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

/*First*/
INSERT INTO t_observacaopaciente (codobservacao, codestado, valor, nid, data)
SELECT	case c.concept_id
					when 730 then 'CD4'
					when 5497 then 'CD4'
					when 5085 then 'Tensão Arterial'
					when 5086 then 'Tensão Arterial'
					when 653 then 'AST'
					when 654 then 'ALT'
					when 1021 then 'LINFOCITO'
					when 952 then 'LINFOCITO'
					when 1022 then 'NEUTROFILO'
					when 1330 then 'NEUTROFILO'
					when 1024 then 'EOSINOFILO'
					when 1332 then 'EOSINOFILO'
					when 1025 then 'BASOFILO'
					when 1333 then 'BASOFILO'
					when 1023 then 'MONOCITO'
					when 1331 then 'MONOCITO'
					when 1017 then 'CMHC'
					when 851 then 'VCM'
					when 21 then 'Hemoglobina'
					when 1018 then 'HGM'
					when 678 then 'WBC'
					when 679 then 'RBC'
					when 5283 then 'INDICE DE KARNOFSKY'
					when 5314 then 'Períneo'
					when 1342 then 'IMC'
					when 5088 then 'Temperatura'
					when 5089 then 'Peso'
					when 5090 then 'Altura'
					when 5087 then 'Pulmonar - Auscultação'
					when 5242 then 'Pulmonar - Respiracao'
					when 729 then 'Plaquetas'
					when 1015 then 'HTC'
					when 5195 then 'Esplenomegáglia'
		else cn.name end as codobservacao,
		case c.concept_id
					when 730 then 'PERCENTUAL'
					when 5497 then 'ABSOLUTO'
					when 5085 then 'SUPERIOR'
					when 5086 then 'INFERIOR'
					when 1021 then 'PERCENTUAL'
					when 952 then 'ABSOLUTO'
					when 1022 then 'PERCENTUAL'
					when 1330 then 'ABSOLUTO'
					when 1024 then 'PERCENTUAL'
					when 1332 then 'ABSOLUTO'
					when 1025 then 'PERCENTUAL'
					when 1333 then 'ABSOLUTO'
					when 1023 then 'PERCENTUAL'
					when 1331 then 'ABSOLUTO'
		else null end as codestado,
		o.value_numeric as valor,
		p.nid,
		o.obs_datetime as data
	 FROM t_paciente p
				inner join	openmrs.encounter e on p.patient_id=e.patient_id
				inner join	openmrs.obs o on o.encounter_id=e.encounter_id and e.patient_id=o.person_id
				inner join	openmrs.concept_name cn on cn.concept_id=o.concept_id and cn.locale='pt' and  cn.concept_name_type='FULLY_SPECIFIED'
				inner join	openmrs.concept c on c.concept_id=o.concept_id
	 WHERE e.encounter_type in (1,3) and
				o.voided=0 and cn.voided=0 and e.voided=0 and p.nid is not null and
				c.datatype_id=1 and c.is_set=0 and p.datanasc is not null and e.encounter_datetime<=@dateFinal;


/*Second*/
INSERT INTO t_observacaopaciente (codobservacao, codestado, nid, data)
SELECT case c.concept_id
			when 300 then 'TIPAGEM SANGUINEA'
			when 1655 then 'RPR'
			when 299 then 'VDRL'
			when 307 then 'BACILOSCOPIA'
			when 1030 then 'PCR'
			when 1120 then 'Pele'
			when 1127 then 'Aparelho Articular'
			when 1126 then 'Genitais'
			when 1415 then 'Mucosas'
			when 1129 then 'Neurológico'
			when 509 then 'Inguinais aumentadados'
			when 1124 then 'Pulmonar - Respiracao'
			when 1427 then 'Pulmonar - Respiracao'
			when 1125 then 'Abdómen'
			when 5112 then 'Axilas aumentados'
			when 643 then 'Cervicais aumentados'
			when 1425 then 'Estado Hidratação'
			when 1239 then 'Local do Corpo'
			when 1629 then 'Cardiológico - Auscultação'
			when 1550 then 'Ap: Sopro Tubárico'
			when 1540 then 'Parótidas aumentadas'
			when 5945 then 'Febre'
			when 1552 then 'Pulmonar - Auscultação'
			when 1548 then 'ap - Fervores'
			when 5334 then 'Candidíase da orofarínge'
			when 1545 then 'Ap - Mv'
			when 1551 then 'Ap: Sopro anfórico'
			when 562 then 'Sopro Cardiaco'
			when 1419 then 'Icterícia'
			when 1549 then 'ap: Roncos'
			when 1621 then 'Antibioticos'
			when 161 then 'Linfadenopatia Generalizada'
			when 6121 then 'Uso de Cotrimoxazol'
			when 1533 then 'Antibioticos'
			when 1535 then 'Vitamina A'
			when 12 then 'Raio X: Torax'
			when 1192 then 'Uso de Antiretroviral'
			when 1538 then 'Uso de Anitfungal'
			when 1088 then 'Regime'
			when 1532 then 'LCR Patologico'
		else cn.name end as codobservacao,
		cnc.name as codestado,
		p.nid,
		o.obs_datetime as data
FROM	t_paciente p
		inner join	openmrs.encounter e on p.patient_id=e.patient_id
		inner join	openmrs.obs o on o.encounter_id=e.encounter_id and e.patient_id=o.person_id
		inner join	openmrs.concept_name cn on cn.concept_id=o.concept_id and cn.locale='pt' and
					cn.concept_name_type='FULLY_SPECIFIED'
		inner join	openmrs.concept_name cnc on cnc.concept_id=o.value_coded and cnc.locale='pt' and
					cnc.concept_name_type='FULLY_SPECIFIED'
		inner join	openmrs.concept c on c.concept_id=o.concept_id
WHERE	e.encounter_type in (1,3) and
		o.voided=0 and cn.voided=0 and e.voided=0 and p.nid is not null and
		c.datatype_id=2 and c.is_set=0  and p.datanasc is not null and o.obs_datetime is not null and e.encounter_datetime<=@dateFinal;


/*Third*/
INSERT INTO t_observacaopaciente (codobservacao, Observacao, nid, data)
SELECT case c.concept_id
			when 1671 then 'Historia Actual'
			when 1474 then 'Terapeutica Outro'
			when 1649 then 'Outros Diagnosticos'
			when 1424 then 'Tipo Lesao de Cavidade Orofaringea'
			when 1543 then 'Exame Pulmonar Auscultacao, Outro'
			when 1423 then 'Tipo de Lesao da Pele'
			when 1396 then 'Outro Exame Abdomen'
			when 1407 then 'Outro Exame Neurologico'
			when 1678 then 'Outos exames Genitais'
			when 1542 then 'Exame Oral'
			when 1556 then 'Membros Inferiores'
			when 1555 then 'Membros Superiores'
			when 1554 then 'Perineo'
			when 1541 then 'Outros Tratamentos'
			when 1553 then 'Outras Massas'
			when 1536 then 'Uso de Cotrimoxazol, Especificamente'
			when 1642 then 'RX: Torax, Outro'
		else cn.name end as codobservacao,
	o.value_text as valor,
	p.nid,
	o.obs_datetime as data
FROM	t_paciente p
	inner join	openmrs.encounter e on p.patient_id=e.patient_id
	inner join	openmrs.obs o on o.encounter_id=e.encounter_id and e.patient_id=o.person_id
	inner join	openmrs.concept_name cn on cn.concept_id=o.concept_id and cn.locale='pt' and
				cn.concept_name_type='FULLY_SPECIFIED'
	inner join	openmrs.concept c on c.concept_id=o.concept_id
WHERE	e.encounter_type in (1,3) and
	o.voided=0 and cn.voided=0 and e.voided=0 and p.nid is not null and
	c.datatype_id=3 and c.is_set=0 and p.datanasc is not null and e.encounter_datetime<=@dateFinal;


/*Atualizar medico*/
UPDATE t_observacaopaciente,
(
SELECT	p.nid,e.encounter_datetime,ep.provider_id medico
FROM	t_paciente p
	inner join	openmrs.encounter e on p.patient_id=e.patient_id
	inner join	openmrs.encounter_provider ep on ep.encounter_id=e.encounter_id
WHERE	e.encounter_type in (1,3) and e.voided=0 and ep.provider_id is not null
) medico
SET t_observacaopaciente.medico = medico.medico
WHERE t_observacaopaciente.nid = medico.nid;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillProcessoParteA`
--

DROP PROCEDURE IF EXISTS `FillProcessoParteA`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillProcessoParteA`()
    READS SQL DATA
begin

truncate table t_adulto;
truncate table t_crianca;
truncate table t_mae;
truncate table t_pai;
truncate table t_contacto;

/*deleting records with null nid*/
delete from t_paciente where nid is null;

/*INSERIR TADULTO*/
	insert into export_db.t_adulto(encounter_id,patient_id,nid)
	select  	min(e.encounter_id),p.patient_id,min(p.nid)
	from 		t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
	where 		e.voided=0 and e.encounter_type=5 and p.tipopaciente='Adulto' and p.dataabertura=e.encounter_datetime
	group by p.patient_id;

/*PROFISSAO*/
update t_adulto,openmrs.obs
set t_adulto.codprofissao= obs.value_text
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1459;

/*ESCOLARIDADE*/
update t_adulto,openmrs.obs
set t_adulto.codnivel= case obs.value_coded
					   when 1445 then 'NENHUM'
					   when 1446 then 'PRIMARIO'
					   when 1447 then 'SECUNDARIO BASICO'
					   when 6124 then 'TECNICO BASICO'
					   when 1444 then 'SECUNDARIO MEDIO'
					   when 6125 then 'TECNICO MEDIO'
					   when 1448 then 'UNIVERSITARIO'
					else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1443;

/*NUMERO DE CONVIVENTES*/
update t_adulto,openmrs.obs
set t_adulto.nrconviventes= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1656;

/*NUMERO DE CONVIVENTES*/
update t_adulto,openmrs.obs
set t_adulto.nrconviventes= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1656;

/*ESTADO CIVIL*/
update t_adulto,openmrs.obs
set t_adulto.codestadocivil= case obs.value_coded
					   when 1057 then 'S'
					   when 5555 then 'C'
					   when 1059 then 'V'
					   when 1060 then 'U'
					   when 1056 then 'SEPARADO'
					   when 1058 then 'DIVORCIADO'
					   else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1054;

/*NUMERO DE CONJUGES*/
update t_adulto,openmrs.obs
set t_adulto.nrconjuges= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=5557;

/*SEROLOGIA HIV CONJUGE*/
update t_adulto,openmrs.obs
set t_adulto.serologiaHivconjuge= case obs.value_coded
					   when 1169 then 'POSITIVO'
					   when 1066 then 'NEGATIVO'
					   when 1457 then 'SEM INFORMACAO'
					   else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1449;

/*NUMERO DE PROCESSO CONJUGE*/
update t_adulto,openmrs.obs
set t_adulto.Nrprocesso= obs.value_text
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1450;

/*NUMERO DE PROCESSO CONJUGE*/
update t_adulto,openmrs.obs
set t_adulto.outrosparceiros= obs.value_text
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1451;

/*NUMERO DE Filhos*/
update t_adulto,openmrs.obs
set t_adulto.nrfilhos= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=5573;

/*NUMERO DE Filhos Testados*/
update t_adulto,openmrs.obs
set t_adulto.nrfilhostestados= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1452;

/*NUMERO DE Filhos HIV+*/
update t_adulto,openmrs.obs
set t_adulto.nrfilhoshiv= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1453;

/*TABACO*/
update t_adulto,openmrs.obs
set t_adulto.tabaco= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1388;

/*ALCOOL*/
update t_adulto,openmrs.obs
set t_adulto.alcool= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1603;

/*DROGA*/
update t_adulto,openmrs.obs
set t_adulto.droga= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=105;

/*NUMERO DE PARCEIROS*/
update t_adulto,openmrs.obs
set t_adulto.nrparceiros= case obs.value_coded
					   when 1662 then 1
					   when 1663 then 2
					   when 1664 then 3
					   else 4 end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1666;

/*ANTECEDENTES GINECOLOGICOS*/
update t_adulto,openmrs.obs
set t_adulto.antecedentesgenelogicos= obs.value_text
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1394;

/*ULTIMA MESTRUACAO*/
update t_adulto,openmrs.obs
set t_adulto.datamestruacao= obs.value_datetime
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1465;

/*ABORTO*/
update t_adulto,openmrs.obs
set t_adulto.aborto= case obs.value_coded
					   when 50 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1667;

/*PTV*/
update t_adulto,openmrs.obs
set t_adulto.ptv= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1466;

/*PTVQUAIS*/
update t_adulto,openmrs.obs
set t_adulto.ptvquais= case obs.value_coded
					when 631 then 'NVP'
					when 797 then 'AZT'
					when 792 then 'D4T+3TC+NVP'
					when 1800 then 'TARV'
					when 1801 then 'AZT+NVP'
					when 630 then 'AZT+3TC'
					when 628 then '3TC'
				 else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1504;

/*GRAVIDA*/
update t_adulto,openmrs.obs
set t_adulto.gravida= case obs.value_coded
					   when 44 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1982;

/*SEMANA GESTACAO*/
update t_adulto,openmrs.obs
set t_adulto.semanagravidez= obs.value_numeric
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1279;

/*DATA PREVISTA*/
update t_adulto,openmrs.obs
set t_adulto.dataprevistoparto= obs.value_datetime
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1600;

/*DATA PARTO*/
update t_adulto,openmrs.obs
set t_adulto.dataparto= obs.value_datetime
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=5599;

/*TIPO ALEITAMENTO*/
update t_adulto,openmrs.obs
set t_adulto.tipoaleitamento= case obs.value_coded
					   when 5526 then 'MATERNO'
					   when 5254 then 'ARTIFICIAL'
					   when 6046 then 'MISTO'
					   else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1151;

/*ALERGIA MEDICAMENTOS*/
update t_adulto,openmrs.obs
set t_adulto.Alergiamedicamentos= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1067 then 'NAO SABE'
					   else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1601;

/*ALERGIA QUAIS*/
update t_adulto,openmrs.obs
set t_adulto.Alergiasquais= obs.value_text
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1517;

/*ANTECEDENTES TARV*/
update t_adulto,openmrs.obs
set t_adulto.Antecedentestarv= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1192;

/*ALERGIA QUAIS*/
update t_adulto,openmrs.obs,openmrs.concept_name
set t_adulto.antecedentesquais= concept_name.name
where 	obs.encounter_id=t_adulto.encounter_id and
		obs.value_coded=concept_name.concept_id and
		concept_name.locale='pt' and concept_name.concept_name_type='FULLY_SPECIFIED' and
		obs.concept_id=1087;

/*EXPOSICAO ACIDENTAL*/
update t_adulto,openmrs.obs
set t_adulto.exposicaoacidental= case obs.value_coded
					   when 1443 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'NAO SABE'
					   else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1687;

/*TIPO ACIDENTE*/
update t_adulto,openmrs.obs
set t_adulto.tipoacidente= case obs.value_coded
					   when 181 then 'PICA COM AGULHA CONTAMINADA'
					   when 5564 then 'SUSPEITO DE UM PARCEIRO CONTAMINADO'
					   when 1508 then 'EXTRACAO DENTARIA'
					   when 1507 then 'INJECCAO'
					   when 1509 then 'ESCARIFICACAO'
					   else obs.value_text end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id in (1061,1435);

/*GELEIRA*/
update t_adulto,openmrs.obs
set t_adulto.geleira= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1455;

/*GELEIRA*/
update t_adulto,openmrs.obs
set t_adulto.electricidade= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=5609;

/*SEXUALIDADE*/
update t_adulto,openmrs.obs
set t_adulto.sexualidade= case obs.value_coded
					   when 1376 then 'HETEROSSEXUAL'
					   when 1377 then 'HOMOSSEXUAL'
					   when 1378 then 'BISSEXUAL'
					   else 'OUTRO' end
where obs.encounter_id=t_adulto.encounter_id and obs.concept_id=1375;

/*HISTORIA ACTUAL*/
update t_adulto,openmrs.obs
set t_adulto.historiaactual=obs.value_text
where obs.person_id=t_adulto.patient_id and obs.concept_id=1671;

/*HIPOTESE DE DIAGNOSTICO*/
update t_adulto,openmrs.obs
set t_adulto.hipotesedediagnostico=obs.value_text
where obs.person_id=t_adulto.patient_id and obs.concept_id=1649;

/*KARNOVSKY*/
update t_adulto,openmrs.obs
set t_adulto.codkarnosfsky=obs.value_numeric
where obs.person_id=t_adulto.patient_id and obs.concept_id=5283;



/*============TCRIANCA==============*/
/*Inserir todos seguimentos do pacientes*/
	insert into export_db.t_crianca(encounter_id,patient_id,nid)
	select  	min(e.encounter_id),p.patient_id,min(p.nid)
	from 		t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
	where 		e.voided=0 and e.encounter_type=7 and p.tipopaciente='Crianca' and p.dataabertura=e.encounter_datetime
	group by p.patient_id;


/*TIPO DE PARTO*/
update t_crianca,openmrs.obs
set t_crianca.tipoparto= case obs.value_coded
					   when 1170 then 'VAGINAL'
					   when 1171 then 'CESARIANA'
					   else 'OUTRO' end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=5630;

/*LOCAL*/
update t_crianca,openmrs.obs
set t_crianca.local=obs.value_text
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1505;


/*TERMO*/
update t_crianca,openmrs.obs
set t_crianca.termo= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1500;

/*PESO AO NASCIMENTO*/
update t_crianca,openmrs.obs
set t_crianca.pesonascimento=obs.value_numeric
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=5916;

/*EXPOSICAO TARV MAE*/
update t_crianca,openmrs.obs
set t_crianca.exposicaotarvmae= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1501;


/*EXPOSICAO TARV NASCENCA*/
update t_crianca,openmrs.obs
set t_crianca.exposicaotarvnascenca= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1502;


/*PATOLOGIA NEONATAL*/
update t_crianca,openmrs.obs
set t_crianca.patologianeonatal=obs.value_text
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1506;


/*INJECCOES*/
update t_crianca,openmrs.obs
set t_crianca.injeccoes= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1507;

/*ESCARIFICACAO*/
update t_crianca,openmrs.obs
set t_crianca.escarificacoes= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1509;


/*EXTRACAO DENTARIA*/
update t_crianca,openmrs.obs
set t_crianca.extracoesdentarias= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1508;


/*ALEITAMENTO MATERNO*/
update t_crianca,openmrs.obs
set t_crianca.aleitamentomaterno= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=6061;

/*ALEITAMENTO MATERNO EXCLUSIVO*/
update t_crianca,openmrs.obs
set t_crianca.aleitamentoexclusivo= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1613;


/*IDADE DE DESMAME*/
update t_crianca,openmrs.obs
set t_crianca.idadedesmame=obs.value_numeric
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1510;


/*PAV COMPLETO*/
update t_crianca,openmrs.obs
set t_crianca.pavcompleto= case obs.value_coded
					   when 1065 then true
					   when 1066 then false
					   when 1457 then -99
					   else null end
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1511;

/*IDADE CRONOLOGICA*/
update t_crianca,openmrs.obs
set t_crianca.idadecronologica=obs.value_numeric
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1512;

/*BAILEY*/
update t_crianca,openmrs.obs
set t_crianca.bailey=obs.value_numeric
where obs.encounter_id=t_crianca.encounter_id and obs.concept_id=1514;



/*=====================TMAE=============================================*/
insert into t_mae(patient_id,encounter_id)
select tc.patient_id,tc.encounter_id
from t_crianca tc,openmrs.obs o
where tc.encounter_id=o.encounter_id and o.concept_id=1477;


/*IDADE DA MAE*/
update t_mae,openmrs.obs
set t_mae.idade=obs.value_numeric
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1478;


/*MAE VIVA*/
update t_mae,openmrs.obs
set t_mae.vivo= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1479;

/*MAE DOENTE*/
update t_mae,openmrs.obs
set t_mae.doente= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1480;

/*DOENCA*/
update t_mae,openmrs.obs
set t_mae.doenca=obs.value_text
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1481;

/*PROFISSAO*/
update t_mae,openmrs.obs
set t_mae.codprofissao=obs.value_text
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1482;



/*RESULTADO HIV*/
update t_mae,openmrs.obs
set t_mae.resultadohiv= case obs.value_coded
					   when 703 then 'POSITIVO'
					   when 664 then 'NEGATIVO'
					   when 1138 then 'INDETERMINADO'
					   when 1118 then 'NAO FEZ'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1483;

/*EM TARV*/
update t_mae,openmrs.obs
set t_mae.emtarv= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_mae.encounter_id and obs.concept_id=1484;


/*=====================TPAI=============================================*/
insert into t_pai(patient_id,encounter_id)
select tc.patient_id,tc.encounter_id
from t_crianca tc,openmrs.obs o
where tc.encounter_id=o.encounter_id and o.concept_id=1485;


/*IDADE DA MAE*/
update t_pai,openmrs.obs
set t_pai.idade=obs.value_numeric
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1486;


/*PAI VIVO*/
update t_pai,openmrs.obs
set t_pai.vivo= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1487;

/*PAI DOENTE*/
update t_pai,openmrs.obs
set t_pai.doente= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1488;

/*DOENCA*/
update t_pai,openmrs.obs
set t_pai.doenca=obs.value_text
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1489;

/*PROFISSAO*/
update t_pai,openmrs.obs
set t_pai.codprofissao=obs.value_text
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1490;



/*RESULTADO HIV*/
update t_pai,openmrs.obs
set t_pai.resultadohiv= case obs.value_coded
					   when 703 then 'POSITIVO'
					   when 664 then 'NEGATIVO'
					   when 1138 then 'INDETERMINADO'
					   when 1118 then 'NAO FEZ'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1491;

/*EM TARV*/
update t_pai,openmrs.obs
set t_pai.emtarv= case obs.value_coded
					   when 1065 then 'SIM'
					   when 1066 then 'NAO'
					   when 1457 then 'SEM INFORMACAO'
					   else null end
where obs.encounter_id=t_pai.encounter_id and obs.concept_id=1492;


update t_crianca,t_pai
set t_crianca.idpai=t_pai.idpai
where t_crianca.encounter_id=t_pai.encounter_id;

update t_crianca,t_mae
set t_crianca.idmae=t_mae.idmae
where t_crianca.encounter_id=t_mae.encounter_id;


/*=================TCONTACTO===============================*/

insert into t_contacto(nid)
select tp.nid
from 	t_paciente tp,openmrs.obs o,t_adulto ta
where 	tp.patient_id=ta.patient_id and
		ta.encounter_id=o.encounter_id and o.concept_id=1441;


insert into t_contacto(nid)
select tp.nid
from 	t_paciente tp,openmrs.obs o,t_crianca ta
where 	tp.patient_id=ta.patient_id and
		ta.encounter_id=o.encounter_id and o.concept_id=1441;




end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillTarvTable`
--

DROP PROCEDURE IF EXISTS `FillTarvTable`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillTarvTable`()
    READS SQL DATA
begin

truncate table t_tarv;
truncate table t_questionariotb;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';


/*Acrescentar na tabela t_tarv os campos encounter_id e patient_id, retirar a chave composta nid, datatarv,codregime e colocar a pk no idtarv
Inserir todas datas de levantamento de ARV independentemente de ser FRIDA ou FILA -
*/
Insert into export_db.t_tarv(encounter_id,patient_id,datatarv)
select 	e.encounter_id,p.patient_id,e.encounter_datetime
from 	export_db.t_paciente p
		inner join openmrs.encounter e on e.patient_id=p.patient_id
where 	e.encounter_datetime<=@dateFinal and e.voided=0 and e.encounter_type=18;


/*ACTUALIZAR TIPO TARV - FRIDA*/

update export_db.t_tarv,
	(
		select case o.value_coded
				when 1256 then 'Inicia'
				when 1257 then 'Manter'
				when 1259 then 'Alterar'
				when 1369 then 'Transfer de'
				when 1705 then 'Reiniciar'
				when 1260 then 'Interromper'
				when 6282 then 'Cont. com Intolerancia'
				when 1708 then 'Saida'
				else 'Outro' end as tipo,
				t.encounter_id
		from 	export_db.t_tarv t
		inner join openmrs.obs o on t.encounter_id=o.encounter_id
		where 	o.voided=0 and o.concept_id=1255 and o.obs_datetime<=@dateFinal
	) tipotarv
set		t_tarv.tipotarv=tipotarv.tipo
where	t_tarv.encounter_id=tipotarv.encounter_id;


/*ACTUALIZAR TIPO TARV - FILA*/
update t_tarv,
	(
		select case o.value_coded
				when 1256 then 'Inicia'
				when 1257 then 'Manter'
				when 1259 then 'Alterar'
				when 1369 then 'Transfer de'
				when 1705 then 'Reiniciar'
				when 1260 then 'Interromper'
				when 6282 then 'Cont. com Intolerancia'
				when 1708 then 'Saida'
				else 'Outro' end as tipo,
				t.patient_id,
				e.encounter_datetime
		from	export_db.t_tarv t
				inner join openmrs.encounter e on e.patient_id=t.patient_id
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		where 	e.encounter_type in (6,9) and e.voided=0 and o.voided=0 and o.concept_id=1255 and e.encounter_datetime<=@dateFinal
	) tipotarv
set		t_tarv.tipotarv=tipotarv.tipo
where	t_tarv.patient_id =tipotarv.patient_id and t_tarv.datatarv=tipotarv.encounter_datetime;


/*COLOCAR TIPO=INICIO NOS LEVANTAMENTOS QUE COINCIDEM COM A DATA DE INICIO DE TARV*/
update t_tarv,
	(select patient_id,min(data_inicio) data_inicio
		from
		(
			Select 	p.patient_id,min(e.encounter_datetime) data_inicio
			from 	openmrs.patient p
					inner join openmrs.encounter e on p.patient_id=e.patient_id
					inner join openmrs.obs o on o.encounter_id=e.encounter_id
			where 	e.voided=0 and o.voided=0 and p.voided=0 and
					e.encounter_type in (18,6,9) and o.concept_id=1255 and o.value_coded=1256 and
					e.encounter_datetime<=@dateFinal
			group by p.patient_id

			union

			Select p.patient_id,min(value_datetime) data_inicio
			from 	openmrs.patient p
					inner join openmrs.encounter e on p.patient_id=e.patient_id
					inner join openmrs.obs o on e.encounter_id=o.encounter_id
			where 	p.voided=0 and e.voided=0 and o.voided=0 and e.encounter_type in (18,6,9) and
					o.concept_id=1190 and o.value_datetime is not null and
					o.value_datetime<=@dateFinal
			group by p.patient_id

			union

			select 	pg.patient_id,date_enrolled as data_inicio
			from 	openmrs.patient p inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
			where 	pg.voided=0 and p.voided=0 and program_id=2 and
					pg.date_enrolled<=@dateFinal
		) inicio
		group by patient_id
	)inicio_real
set t_tarv.tipotarv='Inicia'
where t_tarv.patient_id =inicio_real.patient_id and t_tarv.datatarv=inicio_real.data_inicio and t_tarv.tipotarv is null;

/*REGIME*/
update t_tarv,
(	select e.encounter_id,
		case o.value_coded
		when 1651 then 'AZT+3TC+NVP'
		when 6324 then 'TDF+3TC+EFV'
		when 1703 then 'AZT+3TC+EFV'
		when 6243 then 'TDF+3TC+NVP'
		when 6103 then 'D4T+3TC+LPV/r'
		when 792 then 'D4T+3TC+NVP'
		when 1827 then 'D4T+3TC+EFV'
		when 6102 then 'D4T+3TC+ABC'
		when 6116 then 'AZT+3TC+ABC'
		when 6108 then 'TDF+3TC+LPV/r(2ª Linha)'
		when 6100 then 'AZT+3TC+LPV/r(2ª Linha)'
		when 6329 then 'TDF+3TC+RAL+DRV/r (3ª Linha)'
		when 6330 then 'AZT+3TC+RAL+DRV/r (3ª Linha)'
		when 6105 then 'ABC+3TC+NVP'
		when 6102 then 'D4T+3TC+ABC'
		when 6325 then 'D4T+3TC+ABC+LPV/r (2ª Linha)'
		when 6326 then 'AZT+3TC+ABC+LPV/r (2ª Linha)'
		when 6327 then 'D4T+3TC+ABC+EFV (2ª Linha)'
		when 6328 then 'AZT+3TC+ABC+EFV (2ª Linha)'
		when 6109 then 'AZT+DDI+LPV/r (2ª Linha)'
		when 6329 then 'TDF+3TC+RAL+DRV/r (3ª Linha)'
		when 6110 then 'D4T20+3TC+NVP'
		when 1702 then 'AZT+3TC+NFV'
		when 817  then 'AZT+3TC+ABC'
		when 6104 then 'ABC+3TC+EFV'
		when 6106 then 'ABC+3TC+LPV/r'
		when 6244 then 'AZT+3TC+RTV'
		when 1700 then 'AZT+DDl+NFV'
		when 633  then 'EFV'
		when 625  then 'D4T'
		when 631  then 'NVP'
		when 628  then '3TC'
		when 6107 then 'TDF+AZT+3TC+LPV/r'
		when 6236 then 'D4T+DDI+RTV-IP'
		when 1701 then 'ABC+DDI+NFV'
	else 'OUTRO' end as ultimo_regime
	from	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
	where	e.voided=0 and o.voided=0 and o.concept_id=1088 and e.encounter_type=18 and e.encounter_datetime<=@dateFinal
) regime
set t_tarv.codregime=regime.ultimo_regime
where t_tarv.encounter_id=regime.encounter_id;

/*Data Proxima*/
update t_tarv,
(
	select	e.encounter_id,
			o.value_datetime as dataproxima
	from	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
	where	e.voided=0 and o.voided=0 and e.encounter_type=18 and o.concept_id=5096 and e.encounter_datetime<=@dateFinal
) proxima
set t_tarv.dataproxima=proxima.dataproxima
where t_tarv.encounter_id=proxima.encounter_id;

/*Quantidade Aviada*/
update t_tarv,
(
	select	e.encounter_id,
			o.value_numeric as qtdComp
	from	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
	where	e.voided=0 and o.voided=0 and e.encounter_type=18 and o.concept_id=1715 and e.encounter_datetime<=@dateFinal
) aviada
set t_tarv.QtdComp=aviada.qtdComp
where t_tarv.encounter_id=aviada.encounter_id;


/*Quantidade Saldo*/
update t_tarv,
(
	select	e.encounter_id,
			o.value_numeric as qtdSaldo
	from	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
	where	e.voided=0 and o.voided=0 and e.encounter_type=18 and o.concept_id=1713 and e.encounter_datetime<=@dateFinal
) saldo
set t_tarv.QtdSaldo=saldo.qtdSaldo
where t_tarv.encounter_id=saldo.encounter_id;


/*Dose*/
update t_tarv,
(
	select	e.encounter_id,
			o.value_text as dose
	from	openmrs.encounter e
			inner join openmrs.obs o on e.encounter_id=o.encounter_id
	where	e.voided=0 and o.voided=0 and e.encounter_type=18 and o.concept_id=1711 and e.encounter_datetime<=@dateFinal
) dosagem
set t_tarv.dose=dosagem.dose
where t_tarv.encounter_id=dosagem.encounter_id;

/*update dia*/
update t_tarv
set dias = datediff(dataproxima,datatarv)
where dataproxima is not null;

/*update NID*/
update t_tarv,t_paciente
set t_tarv.nid=t_paciente.nid
where t_paciente.patient_id=t_tarv.patient_id;




/*ACTUALIZAR COD MUDANCA*/
update t_tarv,
	(
		select case o.value_coded
				when 1264 then 'Inicio de Tratamento TB'
				when 6247 then 'Fim tratamento TB'
				when 1982 then 'Gravidez'
				when 6248 then 'Parto'
				when 1790 then 'Falencia Terapeutica'
				when 3 then 'Anemia'
				when 1789 then 'Ausencia de Eficacia'
				when 987 then 'Intolerancia'
				else 'Outro' end as codmudanca,
				t.patient_id,
				e.encounter_datetime
		from	export_db.t_tarv t
				inner join openmrs.encounter e on e.patient_id=t.patient_id
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		where 	e.encounter_type in (6,9) and e.voided=0 and o.voided=0 and o.concept_id=1792 and e.encounter_datetime<=@dateFinal
	) mudanca
set		t_tarv.codmudanca=mudanca.codmudanca
where	t_tarv.patient_id =mudanca.patient_id and t_tarv.datatarv=mudanca.encounter_datetime;


/*EFEITO SECUNDÀRIO*/
update t_tarv,
	(
		select case o.value_coded
				when 3 then 'A'
				when 6292 then 'N'
				when 6293 then 'P'
				when 6294 then 'H'
				when 6295 then 'AP'
				when 821 then 'NP'
				when 6296 then 'M'
				when 6297 then 'AC'
				when 6298 then 'L'
				when 6299 then 'AcL'
				when 16 then 'D'
				else 'Outro' end as efeito,
				t.patient_id,
				e.encounter_datetime
		from	export_db.t_tarv t
				inner join openmrs.encounter e on e.patient_id=t.patient_id
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		where 	e.encounter_type in (6,9) and e.voided=0 and o.voided=0 and o.concept_id=2015 and e.encounter_datetime<=@dateFinal
	) efeitos
set		t_tarv.efeitosSecundarios=efeitos.efeito
where	t_tarv.patient_id=efeitos.patient_id and t_tarv.datatarv=efeitos.encounter_datetime;


/*MOTIVO INICIO*/
update t_tarv,
	(
		select case o.value_coded
				when 6333 then 'CLINICO-IMUNOLOGICO'
				when 6331 then 'B+'
				when 6332 then 'LACTANTE'
				else 'Outro' end as criterio,
				t.patient_id,
				e.encounter_datetime
		from	export_db.t_tarv t
				inner join openmrs.encounter e on e.patient_id=t.patient_id
				inner join openmrs.obs o on e.encounter_id=o.encounter_id
		where 	e.encounter_type in (6,9) and e.voided=0 and o.voided=0 and o.concept_id=6334 and e.encounter_datetime<=@dateFinal
	) criterio_inicio
set		t_tarv.motivoInicioTarv=criterio_inicio.criterio
where	t_tarv.patient_id=criterio_inicio.patient_id and t_tarv.datatarv=criterio_inicio.encounter_datetime;

/*Actualizar idade*/
update t_tarv,t_paciente
set t_tarv.idade=round(datediff(datatarv,datanasc)/365)
where t_paciente.patient_id=t_tarv.patient_id;

/*Inserir t_questionario*/

Insert into t_questionariotb(codopcao,estadoopcao,nid,data)
Select distinct codopcao.codopcao, if(codopcao.codopcao is not null,TRUE,FALSE) as estadoopcao,
              p.nid,
              e.encounter_datetime as data
      From t_paciente p inner join openmrs.encounter e on e.patient_id=p.patient_id
      inner join (	SELECT 	o.person_id,e.encounter_id,
                  case o.value_coded
                  when 1760 then 'Tosse há mais de 3 Semanas?'
                  when 1761 then 'Tosse com sangue? '
                  when 1762 then 'Suores á noite por mais de 3 semanas?'
                  when 1763 then 'Febre por mais de 3 semanas?'
                  when 1764 then 'Perdeu peso (mais de 3 Kg no ultimo mês)?'
                  when 1765 then 'Alguém na família está tratando a TB?'
                  else null end as codopcao
                FROM 	openmrs.encounter e
                      inner join openmrs.obs o on e.encounter_id=o.encounter_id
               WHERE 	e.encounter_type=20 and o.concept_id=1766 and o.voided=0 and e.voided=0
                      ) codopcao on codopcao.encounter_id=e.encounter_id
       where e.encounter_type=20 and  e.voided=0 and p.nid is not null and e.encounter_datetime<=@dateFinal;

end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillTHDD`
--

DROP PROCEDURE IF EXISTS `FillTHDD`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillTHDD`()
    READS SQL DATA
BEGIN

truncate table t_hdd;
SELECT county_district INTO @distrito FROM openmrs.location l WHERE l.location_id = (select DISTINCT location_id from openmrs.obs);
SELECT property_value INTO @hfc FROM openmrs.global_property WHERE property = 'esaudemetadata.hfc';
SELECT DISTINCT location_id INTO @loc FROM openmrs.obs;

insert into t_hdd(hdd,designacao,local,distrito,provincia,location_id)
select location_id,name,address2,county_district,state_province,location_id
from openmrs.location l
where county_district=@distrito;

update t_hdd set t_hdd.hdd=@hfc WHERE t_hdd.hdd=@loc;

delete from t_hdd where length(hdd)<=4;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillTPacienteTable`
--

DROP PROCEDURE IF EXISTS `FillTPacienteTable`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillTPacienteTable`()
    READS SQL DATA
begin

truncate table t_paciente;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

/*Inscricao*/
	insert into export_db.t_paciente(patient_id,sexo,datanasc)
	select 	p.patient_id,pe.gender,pe.birthdate
	from 	openmrs.patient p
			inner join openmrs.person pe on p.patient_id=pe.person_id
	where 	p.voided=0 and pe.voided=0;

/*Update data abertura*/
update 	export_db.t_paciente,
		(	Select 	p.patient_id,min(encounter_datetime) data_abertura,if(e.encounter_type=5,'Adulto','Crianca') tipopaciente,e.location_id
			from 	openmrs.patient p
					inner join openmrs.encounter e on e.patient_id=p.patient_id
			where 	p.voided=0 and e.encounter_type in (5,7) and e.voided=0 and e.encounter_datetime<=@dateFinal
			group by patient_id
		) abertura
set t_paciente.dataabertura=abertura.data_abertura,
	t_paciente.tipopaciente=abertura.tipopaciente,
	t_paciente.location_id=abertura.location_id
where t_paciente.patient_id=abertura.patient_id;

/*Update data abertura com a data de inscricao no programa: Para quem nao tem processo clinico preenchido*/
update export_db.t_paciente,openmrs.patient_program
set 	t_paciente.dataabertura =patient_program.date_enrolled,
		t_paciente.location_id =patient_program.location_id
where 	t_paciente.patient_id=patient_program.patient_id and patient_program.voided=0 and
		patient_program.program_id=1 and t_paciente.dataabertura is null;


/*Eliminar pacientes sem data de abertura*/
delete from t_paciente where dataabertura is null;

/*Actualizar pacientes com mesmo NID*/
update openmrs.patient_identifier,
	(select max(patient_id) patient_id,nid
	from
		(	select patient_id,nid
			from openmrs.patient_identifier,
				(	select identifier nid
					from 	openmrs.patient_identifier
					where 	voided=0 and identifier_type=2
					group by identifier
					having count(*)>=2
				) nid
			where patient_identifier.identifier=nid.nid
		) nid2
	group by nid
	) nid3
set identifier=concat(identifier,'D')
where patient_identifier.identifier=nid3.nid and patient_identifier.patient_id=nid3.patient_id;


/*Update NID*/
update 	export_db.t_paciente,
		(	select 	distinct patient_id,identifier
			from 	openmrs.patient_identifier
			where 	identifier_type=2 and voided=0
		) nid
set t_paciente.nid=nid.identifier
where nid.patient_id=t_paciente.patient_id;


update export_db.t_paciente,openmrs.patient_identifier
set t_paciente.nid=patient_identifier.identifier
where t_paciente.patient_id=patient_identifier.patient_id and t_paciente.nid is null and voided=0;

/*Update hdd*/
update export_db.t_paciente, export_db.t_hdd
set t_paciente.hdd=t_hdd.hdd,
	t_paciente.coddistrito=t_hdd.Distrito
where t_paciente.location_id=t_hdd.location_id;



/*Apagar pacientes sem local de abertura correcto*/
/*delete from export_db.t_paciente where hdd is null;*/

/*Update Idade*/
update t_paciente
set idade=round(datediff(dataabertura,datanasc)/365)
where dataabertura is not null;

/*Actualizar tipo de paciente para quem não tem*/
update export_db.t_paciente
set tipopaciente=if(idade<15,'Crianca','Adulto')
where tipopaciente is null;


update t_paciente
set meses=round(datediff(dataabertura,datanasc)/30)
where dataabertura is not null and idade<2;

/*Update CodProveniencia*/
update t_paciente,
		(Select 	p.patient_id,
				case o.value_coded
				when 1595 then 'ENF'
				when 1596 then 'C.ext'
				when 1414 then 'PNCTL'
				when 1597 then 'ATS/UATS'
				when 1987 then 'SAAJ'
				when 1598 then 'PTV'
				when 1872 then 'CCR'
				when 1275 then 'CS'
				when 1984 then 'HG/HR'
				when 1599 then 'CP'
				when 1932 then 'Referido por 1 PS'
				when 1387 then 'Laboratorio'
				when 1386 then 'Clinica Movel'
				when 1044 then 'ENF. PEDIATRIA'
				when 6304 then 'ATIP'
				when 1986 then 'SEGUNDO SITIO'
				when 6245 then 'ATSC'
				when 1699 then 'CD'
				when 2160 then 'Busca Consentida'
				when 6288 then 'SMI'
				when 5484 then 'Apoio Alimentar'
				when 6155 then 'PMT'
				when 6303 then 'VBG'
				when 6305 then 'OBC'
				else 'Outro' end as codProv
		from 	t_paciente p
				inner join openmrs.encounter e on e.patient_id=p.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	o.voided=0 and o.concept_id=1594 and e.encounter_type in (5,7) and e.voided=0
		) proveniencia
set t_paciente.codproveniencia=proveniencia.codProv
where proveniencia.patient_id=t_paciente.patient_id;

/*Update LocalProveniencia*/
update t_paciente,
		(Select 	p.patient_id,
					o.value_text
		from 	t_paciente p
				inner join openmrs.encounter e on e.patient_id=p.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	o.voided=0 and o.concept_id=1626 and e.encounter_type in (5,7) and e.voided=0
		) desprov
set t_paciente.designacaoprov=desprov.value_text
where desprov.patient_id=t_paciente.patient_id;

/*Update CodigoProveniencia*/
update t_paciente,
		(Select 	p.patient_id,
					o.value_text
		from 	t_paciente p
				inner join openmrs.encounter e on e.patient_id=p.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	o.voided=0 and o.concept_id=1627 and e.encounter_type in (5,7) and e.voided=0
		) desprov
set t_paciente.codigoproveniencia=desprov.value_text
where desprov.patient_id=t_paciente.patient_id;



/*Inicio TARV*/
update t_paciente,
	(select patient_id,min(data_inicio) data_inicio
		from
		(
			Select 	p.patient_id,min(e.encounter_datetime) data_inicio
			from 	openmrs.patient p
					inner join openmrs.encounter e on p.patient_id=e.patient_id
					inner join openmrs.obs o on o.encounter_id=e.encounter_id
			where 	e.voided=0 and o.voided=0 and p.voided=0 and
					e.encounter_type in (18,6,9) and o.concept_id=1255 and o.value_coded=1256 and
					e.encounter_datetime<=@dateFinal
			group by p.patient_id

			union

			Select p.patient_id,min(value_datetime) data_inicio
			from 	openmrs.patient p
					inner join openmrs.encounter e on p.patient_id=e.patient_id
					inner join openmrs.obs o on e.encounter_id=o.encounter_id
			where 	p.voided=0 and e.voided=0 and o.voided=0 and e.encounter_type in (18,6,9) and
					o.concept_id=1190 and o.value_datetime is not null and
					o.value_datetime<=@dateFinal
			group by p.patient_id

			union

			select 	pg.patient_id,date_enrolled as data_inicio
			from 	openmrs.patient p inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
			where 	pg.voided=0 and p.voided=0 and program_id=2 and
					pg.date_enrolled<=@dateFinal
		) inicio
		group by patient_id
	)inicio_real

set t_paciente.emtarv=true,
	t_paciente.datainiciotarv=inicio_real.data_inicio
where t_paciente.patient_id=inicio_real.patient_id;



/*Estado Actual TARV*/
update t_paciente,
		(select 	pg.patient_id,ps.start_date,
				case ps.state
					when 7 then 'TRANSFERIDO PARA'
					when 8 then 'SUSPENDER'
					when 9 then 'ABANDONO'
					when 10 then 'OBITO'
				else null end as codeestado
		from 	t_paciente p
				inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
				inner join openmrs.patient_state ps on pg.patient_program_id=ps.patient_program_id
		where 	pg.voided=0 and ps.voided=0 and
				pg.program_id=2 and ps.state in (7,8,9,10) and ps.end_date is null and
				ps.start_date<=@dateFinal
		) saida
set 	t_paciente.codestado=saida.codeestado,
		t_paciente.datasaidatarv=saida.start_date
where saida.patient_id=t_paciente.patient_id;


/*Estado Actual NAO TARV*/
update t_paciente,
		(select 	pg.patient_id,ps.start_date,
				case ps.state
					when 2 then 'ABANDONO'
					when 3 then 'TRANSFERIDO PARA'
					when 5 then 'OBITO'
				else 'OUTRO' end as codeestado
		from 	t_paciente p
				inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
				inner join openmrs.patient_state ps on pg.patient_program_id=ps.patient_program_id
		where 	pg.voided=0 and ps.voided=0 and
				pg.program_id=1 and ps.state in (2,3,5) and ps.end_date is null and
				ps.start_date<=@dateFinal
		) saida
set 	t_paciente.codestado=saida.codeestado,
		t_paciente.datasaidatarv=saida.start_date
where saida.patient_id=t_paciente.patient_id and t_paciente.datainiciotarv is null;

/*Estado Actual - Obito Demografico*/
update t_paciente,openmrs.person
set 	t_paciente.codestado='OBITO',
		t_paciente.datasaidatarv=person.death_date
where person.person_id=t_paciente.patient_id and codestado is null and dead=1;

/*Data de Diagnostico*/
update t_paciente,
	(	Select 	p.patient_id,
				o.value_datetime
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and o.voided=0 and
				e.encounter_type in (5,7) and o.concept_id=6123
	) diagnostico

set 	t_paciente.datadiagnostico=diagnostico.value_datetime
where 	t_paciente.patient_id=diagnostico.patient_id;

/*Aconselhado*/
update t_paciente,
	(	Select 	p.patient_id
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and o.voided=0 and
				e.encounter_type in (5,7) and o.concept_id=1463 and o.value_coded=1065
	) aconselhado
set 	t_paciente.aconselhado=true
where 	t_paciente.patient_id=aconselhado.patient_id;

/*Aceita busca*/
update t_paciente, openmrs.encounter
set 	t_paciente.aceitabuscaactiva=true,
		t_paciente.dataaceitabuscaactiva=encounter_datetime
where encounter.patient_id=t_paciente.patient_id and encounter_type=30 and encounter_datetime<=@dateFinal;


/*Update Regime*/
update t_paciente,
(
			select 	ultimo_lev.patient_id,
					case o.value_coded
						when 1651 then 'AZT+3TC+NVP'
						when 6324 then 'TDF+3TC+EFV'
						when 1703 then 'AZT+3TC+EFV'
						when 6243 then 'TDF+3TC+NVP'
						when 6103 then 'D4T+3TC+LPV/r'
						when 792 then 'D4T+3TC+NVP'
						when 1827 then 'D4T+3TC+EFV'
						when 6102 then 'D4T+3TC+ABC'
						when 6116 then 'AZT+3TC+ABC'
						when 6108 then 'TDF+3TC+LPV/r(2ª Linha)'
						when 6100 then 'AZT+3TC+LPV/r(2ª Linha)'
						when 6329 then 'TDF+3TC+RAL+DRV/r (3ª Linha)'
						when 6330 then 'AZT+3TC+RAL+DRV/r (3ª Linha)'
						when 6105 then 'ABC+3TC+NVP'
						when 6102 then 'D4T+3TC+ABC'
						when 6325 then 'D4T+3TC+ABC+LPV/r (2ª Linha)'
						when 6326 then 'AZT+3TC+ABC+LPV/r (2ª Linha)'
						when 6327 then 'D4T+3TC+ABC+EFV (2ª Linha)'
						when 6328 then 'AZT+3TC+ABC+EFV (2ª Linha)'
						when 6109 then 'AZT+DDI+LPV/r (2ª Linha)'
						when 6329 then 'TDF+3TC+RAL+DRV/r (3ª Linha)'
						when 6110 then 'D4T20+3TC+NVP'
						when 1702 then 'AZT+3TC+NFV'
						when 817  then 'AZT+3TC+ABC'
						when 6104 then 'ABC+3TC+EFV'
						when 6106 then 'ABC+3TC+LPV/r'
						when 6244 then 'AZT+3TC+RTV'
						when 1700 then 'AZT+DDl+NFV'
						when 633  then 'EFV'
						when 625  then 'D4T'
						when 631  then 'NVP'
						when 628  then '3TC'
						when 6107 then 'TDF+AZT+3TC+LPV/r'
						when 6236 then 'D4T+DDI+RTV-IP'
						when 1701 then 'ABC+DDI+NFV'
					else 'OUTRO' end as ultimo_regime,
					ultimo_lev.encounter_datetime data_regime
			from 	openmrs.obs o,
					(	select p.patient_id,max(encounter_datetime) as encounter_datetime
						from 	t_paciente p
								inner join openmrs.encounter e on p.patient_id=e.patient_id
						where 	encounter_type=18 and e.voided=0 and
								encounter_datetime <=@dateFinal
						group by patient_id
					) ultimo_lev
			where 	o.person_id=ultimo_lev.patient_id and o.obs_datetime=ultimo_lev.encounter_datetime and o.voided=0 and
					o.concept_id=1088
		) regime
set		t_paciente.codregime=regime.ultimo_regime
where	t_paciente.patient_id=regime.patient_id;

/*Update Estadio OMS*/
update t_paciente,
	(	select estadio1.patient_id,
				case obs.value_coded
				when 1204 then 'I'
				when 1205 then 'II'
				when 1206 then 'III'
				when 1207 then 'IV'
				else 'OUTRO' end as nome

		from
		(Select p.patient_id,
				min(e.encounter_datetime) data_tarv
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and o.voided=0 and
				e.encounter_type in (6,9) and o.concept_id=5356
		group by p.patient_id) estadio1
		inner join openmrs.encounter e on e.patient_id=estadio1.patient_id
		inner join openmrs.obs on obs.encounter_id=e.encounter_id

		where	estadio1.data_tarv=obs.obs_datetime and obs.concept_id=5356 and obs.voided=0 and
				e.encounter_type in (6,9) and e.voided=0 and e.encounter_datetime<=@dateFinal

	) estadio

set		t_paciente.estadiooms=estadio.nome
where	t_paciente.patient_id=estadio.patient_id;

/*Tratamento de TB*/
update t_paciente,
		(select 	pg.patient_id
		from 	t_paciente p inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
		where 	pg.voided=0 and program_id=5 and date_enrolled<=@dateFinal
		) tratamentotb
set 	t_paciente.emtratamentotb=true
where tratamentotb.patient_id=t_paciente.patient_id;


/*CUIDADOS DOMICILIARIOS*/
update t_paciente,
	(	Select 	p.patient_id,
				o.obs_datetime
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and o.voided=0 and e.encounter_datetime<=@dateFinal and
				e.encounter_type in (6,9) and o.concept_id in (6287,1272) and o.value_coded=1699
	) referCD
set 	t_paciente.referidocd=true,
		t_paciente.DataCD=referCD.obs_datetime
where 	t_paciente.patient_id=referCD.patient_id;

/*EDUCAO e PREVENCAO*/
update t_paciente,
	(	Select 	p.patient_id,
				o.obs_datetime,
				if(o.value_coded=1065,'SIM','NAO') valorEd
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and o.voided=0 and e.encounter_datetime<=@dateFinal and
				e.encounter_type in (6,9) and o.concept_id=1714
	) educacao
set 	t_paciente.Educacaoprevencao=valorEd
where 	t_paciente.patient_id=educacao.patient_id;

/*TRANSFERIDO DE PRE-TARV*/
update t_paciente,
		(select 	pg.patient_id
		from 	t_paciente p
				inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
				inner join openmrs.patient_state ps on pg.patient_program_id=ps.patient_program_id
		where 	pg.voided=0 and ps.voided=0 and
				pg.program_id=1 and ps.state=28 and ps.start_date<=@dateFinal
		) transf
set 	t_paciente.transfOutraUs='SIM'
where 	t_paciente.patient_id=transf.patient_id;

/*TRANSFERIDO DE TARV*/
update t_paciente,
		(select 	pg.patient_id
		from 	t_paciente p
				inner join openmrs.patient_program pg on p.patient_id=pg.patient_id
				inner join openmrs.patient_state ps on pg.patient_program_id=ps.patient_program_id
		where 	pg.voided=0 and ps.voided=0 and
				pg.program_id=2 and ps.state=29 and ps.start_date<=@dateFinal
		) transf
set 	t_paciente.transfOutraUs='SIM'
where 	t_paciente.patient_id=transf.patient_id;


/*DATA ELEGIBILIDADE*/
update t_paciente,
	(	Select 	p.patient_id,
				o.value_datetime
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and o.voided=0 and e.encounter_datetime<=@dateFinal and
				e.encounter_type in (6,9) and o.concept_id=6278
	) elegivel
set 	t_paciente.dataElegibilidadeInicioTarv=value_datetime
where 	t_paciente.patient_id=elegivel.patient_id;


/*APSS DISPONIVEL*/
update t_paciente,
	(	Select 	p.patient_id
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
		where 	e.voided=0 and e.encounter_datetime<=@dateFinal and
				e.encounter_type in (34,24,19) and e.form_id in (131,132)
	) apss
set 	t_paciente.apssDisponivel='SIM'
where 	t_paciente.patient_id=apss.patient_id;


/*APSS FORMA CONTACTO*/
update t_paciente,
	(	Select 	p.patient_id,
				if(o.value_coded=6307,'CONTACTO TELEFONICO','VISITA DOMICILIARIA') tipo
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and e.encounter_datetime<=@dateFinal and o.voided=0 and
				e.encounter_type in (34,24,19) and e.form_id in (131,132) and o.concept_id=6309
	) apss
set 	t_paciente.apssFormaContacto=tipo
where 	t_paciente.patient_id=apss.patient_id;


/*APSS INFORMOU ESTADO*/
update t_paciente,
	(	Select 	p.patient_id,
				if(o.value_coded=1065,'SIM','NAO') tipo
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and e.encounter_datetime<=@dateFinal and o.voided=0 and
				e.encounter_type in (34,24,19) and e.form_id in (131,132) and o.concept_id=1048
	) apss
set 	t_paciente.apssQuemInformouSeroestado=tipo
where 	t_paciente.patient_id=apss.patient_id;

/*APSS ESTADO PARCEIRO*/
update t_paciente,
	(	Select 	p.patient_id,
				if(o.value_coded=703,'POSITIVO',if(o.value_coded=664,'NEGATIVO','NAO SABE')) tipo
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
				inner join openmrs.obs o on o.encounter_id=e.encounter_id
		where 	e.voided=0 and e.encounter_datetime<=@dateFinal and o.voided=0 and
				e.encounter_type in (34,24,19) and e.form_id in (131,132) and o.concept_id=2074
	) apss
set 	t_paciente.apssconheceestadoparceiro=tipo
where 	t_paciente.patient_id=apss.patient_id;


end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillTratamentoTb`
--

DROP PROCEDURE IF EXISTS `FillTratamentoTb`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillTratamentoTb`()
    READS SQL DATA
BEGIN

DECLARE no_info INT;
DECLARE piidentifier VARCHAR(30);
DECLARE ppdate_enrolled DATETIME;
DECLARE ppdate_completed DATETIME;
DECLARE contagem INT DEFAULT 0;


DECLARE cur_tb CURSOR FOR
		SELECT DISTINCT tp.nid,
			   pp.date_enrolled,pp.date_completed
		FROM openmrs.patient_program pp
				INNER JOIN t_paciente tp
                ON pp.patient_id = tp.patient_id
		WHERE pp.program_id = 5 AND pp.voided = 0 and pp.date_completed<=(SELECT property_value FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo');

DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_info=1;

TRUNCATE TABLE t_tratamentotb;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

INSERT INTO t_tratamentotb (nid, data)
SELECT DISTINCT p.nid,dataInicio.data
FROM t_paciente p
	INNER JOIN (	 SELECT o.value_datetime AS data,e.patient_id
					 FROM 	openmrs.encounter e
							INNER JOIN openmrs.obs o ON e.encounter_id=o.encounter_id AND o.person_id=e.patient_id
					 WHERE 	e.encounter_type IN (6,9) and o.concept_id IN (1113)  AND o.voided=0 AND e.voided=0 and e.encounter_datetime<=@dateFinal

					UNION

					 SELECT o.obs_datetime AS data,e.patient_id
					 FROM 	openmrs.encounter e
							INNER JOIN openmrs.obs o ON e.encounter_id=o.encounter_id AND o.person_id=e.patient_id
					 WHERE 	e.encounter_type IN (6,9) AND o.concept_id IN (1268) AND o.value_coded=1256 AND o.voided=0 AND e.voided=0 and e.encounter_datetime<=@dateFinal

			) dataInicio ON dataInicio.patient_id=p.patient_id;


	update t_tratamentotb,
			(	SELECT 	p.nid,o.value_datetime as datafim
				FROM 	t_paciente p
						inner join openmrs.encounter e on p.patient_id=e.patient_id
						INNER JOIN openmrs.obs o ON e.encounter_id=o.encounter_id
				WHERE 	e.encounter_type IN (6,9) AND o.concept_id=6120 AND o.voided=0 AND e.voided=0 and e.encounter_datetime<=@dateFinal
			) datafim
	set t_tratamentotb.datafim=datafim.datafim
	where datafim.nid=t_tratamentotb.nid;


SET no_info = 0;
OPEN cur_tb;
cur_loop:WHILE(no_info = 0) DO

    FETCH cur_tb INTO piidentifier, ppdate_enrolled,ppdate_completed;

    IF no_info = 1 THEN
		LEAVE cur_loop;
	END IF;

		SELECT COUNT(*) INTO contagem
        from t_tratamentotb
        WHERE nid = piidentifier AND data = ppdate_enrolled;

    IF contagem = 0 THEN
		INSERT INTO t_tratamentotb (nid, data, datafim) values(piidentifier,ppdate_enrolled,ppdate_completed);
	END IF;

SET contagem = 0;

END WHILE cur_loop;
CLOSE cur_tb;
SET no_info = 0;
end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `FillTSeguimento`
--

DROP PROCEDURE IF EXISTS `FillTSeguimento`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillTSeguimento`()
    READS SQL DATA
begin
DECLARE no_more_rows int;
DECLARE patientId int;
DECLARE nid varchar(20);
DECLARE encDate datetime;
DECLARE encID int;
DECLARE seguimentosNaData int default 0;
DECLARE cur_apss CURSOR FOR
		Select 	p.patient_id,
				p.nid,
				e.encounter_datetime,
				e.encounter_id
		from 	t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
		where 	e.voided=0 and e.encounter_datetime<=(SELECT property_value FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo') and
				e.encounter_type in (34,24) and e.form_id=132;


DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_rows=1;


truncate table t_seguimento;
truncate table t_infeccoesoportunisticaseguimento;
truncate table t_diagnosticoseguimento;
truncate table t_tratamentoseguimento;
truncate table t_resultadoslaboratorio;
SELECT property_value INTO @dateFinal FROM openmrs.global_property WHERE property='esaudemetadata.dateToImportTo';

/*Inserir todos seguimentos do pacientes*/
	insert into export_db.t_seguimento(encounter_id,patient_id,nid,dataseguimento)
	select  	e.encounter_id,p.patient_id,p.nid,e.encounter_datetime
	from 		t_paciente p
				inner join openmrs.encounter e on p.patient_id=e.patient_id
	where 		e.voided=0 and e.encounter_type in (6,9) and e.encounter_datetime<=@dateFinal;

/*Update Estadio OMS*/
update t_seguimento,
	(	select ts.encounter_id,
				case o.value_coded
				when 1204 then 'I'
				when 1205 then 'II'
				when 1206 then 'III'
				when 1207 then 'IV'
				else 'OUTRO' end as nome

		from 	t_seguimento ts
				inner join openmrs.obs o on o.encounter_id=ts.encounter_id
		where	o.concept_id=5356 and o.voided=0

	) estadio

set		t_seguimento.estadiooms=estadio.nome
where	t_seguimento.encounter_id=estadio.encounter_id;


/*Update Data Proxima Consulta*/
update t_seguimento,openmrs.obs
set		t_seguimento.dataproximaconsulta=obs.value_datetime
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=1410 and voided=0;

/*RASTREIO TB*/
update t_seguimento,openmrs.obs
set		t_seguimento.screeningtb=if(obs.value_coded=1065,'SIM','NAO')
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=6257 and voided=0;


/*RASTREIO ITS*/
update t_seguimento,openmrs.obs
set		t_seguimento.screeningIts=if(obs.value_coded=1065,'SIM','NAO')
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=6258 and voided=0;

/*ACONSELHADO*/
update t_seguimento,openmrs.obs
set		t_seguimento.aconselhado=if(obs.value_coded=1065,'SIM','NAO')
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=1714 and voided=0;


/*REFERIDO SECTOR CLINICO*/
update t_seguimento,
	(	select ts.encounter_id,
				case o.value_coded
				when 5487 then 'TRATAMENTO TB'
				when 2044 then 'APOIO PSICOSSOCIAL'
				when 1940 then 'PLANEAMENTO FAMILIAR'
				when 5485 then 'INTERNAMENTO'
				when 1798 then 'CONSULTA MEDICA'
				else 'OUTRO' end as nome

		from 	t_seguimento ts
				inner join openmrs.obs o on o.encounter_id=ts.encounter_id
		where	o.concept_id=1272 and o.voided=0

	) referencia

set		t_seguimento.referidoSectorClinico=referencia.nome
where	t_seguimento.encounter_id=referencia.encounter_id;

/*DUM*/
update t_seguimento,openmrs.obs
set		t_seguimento.dum=obs.value_datetime
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=1465 and voided=0;

/*DPP*/
update t_seguimento,openmrs.obs
set		t_seguimento.dpp=obs.value_datetime
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=1600 and voided=0;

/*PTV TARV*/
update t_seguimento,openmrs.obs
set		t_seguimento.PTV_TARV=if(obs.value_coded=1598,'PTV','TARV')
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=6286 and voided=0;


/*LACTANTE*/
update t_seguimento,openmrs.obs
set		t_seguimento.lactante=if(obs.value_coded=1065,'SIM','NAO')
where	t_seguimento.encounter_id=obs.encounter_id and obs.concept_id=6332 and voided=0;



SET no_more_rows=0;
OPEN cur_apss;
cur_loop:WHILE(no_more_rows=0) DO
     FETCH cur_apss INTO patientId,nid,encDate,encID;
     IF no_more_rows=1 THEN
          LEAVE cur_loop;
     END IF;

	 select count(*) into seguimentosNaData
	 from t_seguimento
	 where patient_id=patientId and dataseguimento=encDate;

	 IF seguimentosNaData>0 THEN
		/*Data actividade PP*/
		update t_seguimento
		set apssdatavisita=encDate
		where patient_id=patientId and dataseguimento=encDate;

		/*ACTIVIDADE PP*/
		update t_seguimento,
				(Select 	case o.value_coded
						when 6312 then 'ACOLHIMENTO'
						when 6313 then 'ACONSELHAMENTO PRE-TARV'
						when 5488 then 'SEGUIMENTO ACONSELHAMENTO'
						else null end as nome
				from 	openmrs.obs o
				where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6314
				) tipo
		set t_seguimento.apssActividade=tipo.nome
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*TIPO VISITA PP*/

		update t_seguimento,
				(Select 	case o.value_coded
						when 1115 then 'NORMAL'
						when 6311 then 'BAIXA ADESAO'
						when 1707 then 'ABANDONO'
						else null end as nome
				from 	openmrs.obs o
				where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6315
				) tipo
		set t_seguimento.apssTipovisita=tipo.nome
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*PP AVALIACAO ADESAO*/

		update t_seguimento,
				(Select 	case o.value_coded
						when 1383 then 'BOA'
						when 1749 then 'RISCO'
						when 1385 then 'BAIXA'
						else null end as nome
				from 	openmrs.obs o
				where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6223
				) tipo
		set t_seguimento.apssAdesao=tipo.nome
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*DATA PROXIMA PP*/

		update t_seguimento,
				(	Select o.value_datetime
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6310
				) tipo
		set t_seguimento.apssproximavisita=tipo.value_datetime
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP1*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6317
				) tipo
		set t_seguimento.pp1=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP2*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6318
				) tipo
		set t_seguimento.pp2=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP3*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6319
				) tipo
		set t_seguimento.pp3=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP4*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6320
				) tipo
		set t_seguimento.pp4=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP5*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=5271
				) tipo
		set t_seguimento.pp5=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP6*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6321
				) tipo
		set t_seguimento.pp6=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

		/*MENSAGEM PP7*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6322
				) tipo
		set t_seguimento.pp7=tipo.pp
		where t_seguimento.patient_id=patientId and t_seguimento.dataseguimento=encDate;

	ELSE
		insert into t_seguimento(nid,dataseguimento,Observacao,apssdatavisita,encounter_id,patient_id)
		values(nid,encDate,'VISITA DE APOIO PSICOSSOCIAL SOMENTE',encDate,encID,patientId);

		/*ACTIVIDADE PP*/
		update t_seguimento,
				(Select 	case o.value_coded
						when 6312 then 'ACOLHIMENTO'
						when 6313 then 'ACONSELHAMENTO PRE-TARV'
						when 5488 then 'SEGUIMENTO ACONSELHAMENTO'
						else null end as nome
				from 	openmrs.obs o
				where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6314
				) tipo
		set t_seguimento.apssActividade=tipo.nome
		where t_seguimento.encounter_id=encID;

		/*TIPO VISITA PP*/

		update t_seguimento,
				(Select 	case o.value_coded
						when 1115 then 'NORMAL'
						when 6311 then 'BAIXA ADESAO'
						when 1707 then 'ABANDONO'
						else null end as nome
				from 	openmrs.obs o
				where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6315
				) tipo
		set t_seguimento.apssTipovisita=tipo.nome
		where t_seguimento.encounter_id=encID;

		/*PP AVALIACAO ADESAO*/

		update t_seguimento,
				(Select 	case o.value_coded
						when 1383 then 'BOA'
						when 1749 then 'RISCO'
						when 1385 then 'BAIXA'
						else null end as nome
				from 	openmrs.obs o
				where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6223
				) tipo
		set t_seguimento.apssAdesao=tipo.nome
		where t_seguimento.encounter_id=encID;

		/*DATA PROXIMA PP*/

		update t_seguimento,
				(	Select o.value_datetime
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6310
				) tipo
		set t_seguimento.apssproximavisita=tipo.value_datetime
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP1*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6317
				) tipo
		set t_seguimento.pp1=tipo.pp
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP2*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6318
				) tipo
		set t_seguimento.pp2=tipo.pp
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP3*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6319
				) tipo
		set t_seguimento.pp3=tipo.pp
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP4*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6320
				) tipo
		set t_seguimento.pp4=tipo.pp
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP5*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=5271
				) tipo
		set t_seguimento.pp5=tipo.pp
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP6*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6321
				) tipo
		set t_seguimento.pp6=tipo.pp
		where t_seguimento.encounter_id=encID;

		/*MENSAGEM PP7*/

		update t_seguimento,
				(	Select if(o.value_coded=1065,true,if(o.value_coded=1066,false,null)) pp
					from 	openmrs.obs o
					where 	o.voided=0 and o.encounter_id=encID and o.concept_id=6322
				) tipo
		set t_seguimento.pp7=tipo.pp
		where t_seguimento.encounter_id=encID;
	 END IF;

	set seguimentosNaData=0;
END WHILE cur_loop;
CLOSE cur_apss;
SET no_more_rows=0;


/*Update Idade*/
update t_seguimento,t_paciente
set t_seguimento.idade=round(datediff(t_seguimento.dataseguimento,t_paciente.datanasc)/365)
where t_paciente.patient_id=t_seguimento.patient_id;

update t_seguimento,t_paciente
set t_seguimento.meses=round(datediff(t_seguimento.dataseguimento,t_paciente.datanasc)/30)
where t_paciente.patient_id=t_seguimento.patient_id and t_seguimento.idade<=2;


/*T_DIAGNOSTICO SEGUIMENTO*/
insert into t_diagnosticoseguimento(idseguimento,coddiagnostico,Nid,Data)
SELECT	ts.encounter_id,
		case o.value_coded
			when 123 then 'MALARIA'
			when 68 then 'DESNUTRIÇÃO AGUDA MODERADA (DAM)'
			when 3 then 'ANEMIA'
			when 216 then 'LEUCEMIA'
			when 5046 then 'ENCEFALOPATIA'
			when 218 then 'OTITE'
			when 5945 then 'FEBRE'
			when 507 then 'SARCOMA DE KAPOSI'
			when 16 then 'DIARREIA'
			when 1790 then 'FALENCIA TERAPEUTICA'
		else 'OUTRO NAO CODIFICADO' end as diagnostico,
		tp.nid,
		ts.dataseguimento
 FROM	t_paciente tp
		inner join t_seguimento ts on tp.patient_id=ts.patient_id
		inner join openmrs.obs o on ts.encounter_id=o.encounter_id
WHERE 	o.concept_id=1406 and o.voided=0;

insert into t_diagnosticoseguimento(idseguimento,coddiagnostico,observacao,Nid,Data)
SELECT	ts.encounter_id,
		concat('OUTRO','-',o.obs_id),
		o.value_text,
		tp.nid,
		ts.dataseguimento
FROM	t_paciente tp
		inner join t_seguimento ts on tp.patient_id=ts.patient_id
		inner join openmrs.obs o on ts.encounter_id=o.encounter_id
WHERE 	o.concept_id=1649 and o.voided=0;


/*T_TRATAMENTO SEGUIMENTO*/
insert into t_tratamentoseguimento(idseguimento,codtratamento,data,nid)
SELECT 	ts.encounter_id,
		cn.name,
		ts.dataseguimento,
		p.nid
FROM	t_paciente p
		inner join	t_seguimento ts on p.patient_id=ts.patient_id
		inner join	openmrs.obs o on o.encounter_id=ts.encounter_id
		inner join	openmrs.concept_name cn on cn.concept_id=o.value_coded and cn.locale='pt' and
					cn.concept_name_type='FULLY_SPECIFIED'
WHERE	o.concept_id=1719 and o.voided=0 and cn.voided=0 and p.nid is not null;

/*T_IO SEGUIMENTO*/
insert into t_infeccoesoportunisticaseguimento(idseguimento,estadiooms,codigoio,Nid,Data)
SELECT	ts.encounter_id,
		case	o.concept_id
			when 1564 then 'I'
			when 1565 then 'II'
			when 1566 then 'III'
			when 1569 then 'IV'
			when 1558 then 'I'
			when 1561 then 'II'
			when 1562 then 'III'
			when 2066 then 'IV'
			end as estadioms,
	if(length(cn.name)>50,concat(left(cn.name,45),' ...'),cn.name) as codigoio,
	p.nid,
	ts.dataseguimento
FROM	t_paciente p
		inner join	t_seguimento ts on p.patient_id=ts.patient_id
		inner join	openmrs.obs o on o.encounter_id=ts.encounter_id
		inner join	openmrs.concept_name cn on cn.concept_id=o.value_coded and cn.locale='pt' and
				cn.concept_name_type='FULLY_SPECIFIED'
WHERE	o.concept_id in (1564,1565,1566,1569,1558,1561,1562,2066) and
		o.voided=0 and cn.voided=0 and p.nid is not null;

/*====t_resultadoslaboratorio===*/

insert into t_resultadoslaboratorio(patient_id,encounter_id,codexame,nid,dataresultado,codparametro,resultado,obs)
SELECT	p.patient_id,
		e.encounter_id,
		case o.concept_id
			when 730 then 'CD4'
			when 5497 then 'CD4'
			when 1695 then 'CD4'
			when 653 then 'AST'
			when 654 then 'ALT'
			when 1694 then 'ALT'
			when 1693 then 'AST'
			when 1021 then 'L'
			when 952 then 'L'
			when 1691 then 'L'
			when 1022 then 'N'
			when 1690 then 'N'
			when 1330 then 'N'
			when 1024 then 'E'
			when 1332 then 'E'
			when 1025 then 'B'
			when 1333 then 'B'
			when 1023 then 'M'
			when 1331 then 'M'
			when 1017 then 'CMHC'
			when 851 then 'VGM'
			when 21 then 'Hemoglobina'
			when 1692 then 'Hemoglobina'
			when 1018 then 'HGM'
			when 678 then 'WBC'
			when 679 then 'RBC'
			when 1015 then 'HTC'
			when 729 then 'Plaquetas'
			when 1016 then 'RDW'
			when 1307 then 'MPV'
			when 1011 then 'CK'
			when 857 then 'Ureia'
			when 790 then 'Creatinina'
			when 848 then 'Albumina'
			when 655 then 'Bilirrubina T'
			when 887 then 'GLC'
			when 1297 then 'Bilirrubina C'
			when 1299 then 'Amilase'
			when 855 then 'VS'
			when 856 then 'Carga Viral'
			when 1006 then 'Colesterol Total'
			when 1007 then 'HDL Colesterol'
			when 1008 then 'LDL Colesterol'
			when 785 then 'Fosfatase Alcalina'
			when 2077 then 'GGT'
			when 1014 then 'LDH'
			when 1012 then 'Lactato'
			when 1013 then 'Lipase'
			when 717 then 'Total Proteina'
			when 1009 then 'TG'
			when 1134 then 'Cloreto'
			when 1133 then 'Potassio'
			when 1132 then 'Sodio'
			when 1520 then 'Globulinas'
		else 'OUTRO' end as codexame,
		p.nid,
		o.obs_datetime as dataresultado,
		case o.concept_id
			when 730 then 'PERCENTUAL'
			when 5497 then 'ABSOLUTO'
			when 1695 then 'ABSOLUTO'
			when 1021 then 'PERCENTUAL'
			when 952 then 'ABSOLUTO'
			when 1691 then 'ABSOLUTO'
			when 1022 then 'PERCENTUAL'
			when 1330 then 'ABSOLUTO'
			when 1690 then 'ABSOLUTO'
			when 1024 then 'PERCENTUAL'
			when 1332 then 'ABSOLUTO'
			when 1025 then 'PERCENTUAL'
			when 1333 then 'ABSOLUTO'
			when 1023 then 'PERCENTUAL'
			when 1331 then 'ABSOLUTO'
		else null end as codparametro,
		o.value_numeric as resultado,
		if(e.encounter_type=13,'RESULTADO DA FICHA DE LABORATORIO','RESULTADO DA FICHA DE SEGUIMENTO') observacao
FROM	t_paciente p
		inner join	openmrs.encounter e on p.patient_id=e.patient_id
		inner join	openmrs.obs o on o.encounter_id=e.encounter_id
WHERE	e.encounter_type in (6,9,13) and o.voided=0 and e.voided=0 and p.nid is not null and
		e.encounter_datetime<=@dateFinal and
		o.concept_id in (730,5497,1695,653,654,1694,1693,1021,952,1691,1022,1690,1330,1024,1332,1025,1333,1023,1331,1017,
						851,21,1692,1018,678,679,1015,729,1016,1307,1011,857,790,848,655,887,12971299,855,856,1006,1007,
						1008,785,2077,1014,1012,1013,717,1009,1134,1133,1132,1520);


insert into t_resultadoslaboratorio(patient_id,encounter_id,codexame,nid,dataresultado,codparametro,obs)
SELECT	p.patient_id,
		e.encounter_id,
		case o.concept_id
			when 300 then 'TIPAGEM SANGUINEA'
			when 1655 then 'RPR'
			when 299 then 'VDRL'
			when 307 then 'BACILOSCOPIA'
			when 1030 then 'PCR'
			when 45 then 'TESTE GRAVIDEZ'
		else 'OUTRO' end as codexame,
		p.nid,
		o.obs_datetime as dataresultado,
		case o.value_coded
			when 1229 then 'NAO REACTIVO'
			when 1228 then 'REACTIVO'
			when 1304 then 'MA QUALIDADE DE AMOSTRA'
			when 664 then 'NEGATIVO'
			when 703 then 'POSITIVO'
			when 1138 then 'INDETERMINADO'
			when 690 then 'A POSITIVO'
			when 692 then 'A NEGATIVO'
			when 694 then 'B POSITIVO'
			when 696 then 'B NEGATIVO'
			when 699 then 'O POSITIVO'
			when 701 then 'O NEGATIVO'
			when 1230 then 'AB POSITIVO'
			when 1231 then 'AB NEGATIVO'
		else 'OUTRO' end as codparametro,
		if(e.encounter_type=13,'RESULTADO DA FICHA DE LABORATORIO','RESULTADO DA FICHA DE SEGUIMENTO') observacao
FROM	t_paciente p
		inner join	openmrs.encounter e on p.patient_id=e.patient_id
		inner join	openmrs.obs o on o.encounter_id=e.encounter_id
WHERE	e.encounter_type in (6,9,13) and o.voided=0 and e.voided=0 and p.nid is not null and
		e.encounter_datetime<=@dateFinal and
		o.concept_id in (300,1655,299,307,1030,45);


/*ACTUALIZAR DATA PEDIDO*/

update t_resultadoslaboratorio,openmrs.obs
set datapedido=value_datetime
where t_resultadoslaboratorio.encounter_id=obs.encounter_id and obs.concept_id=6246 and obs.voided=0;

/*ACTUALIZAR DATA PROXIMO CONTROLO CD4*/

update t_resultadoslaboratorio,openmrs.obs
set dataProximoControlCd4=value_datetime
where t_resultadoslaboratorio.encounter_id=obs.encounter_id and obs.concept_id=6249 and obs.voided=0 and codexame='CD4';

end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;