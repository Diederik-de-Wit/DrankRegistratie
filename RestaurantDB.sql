-- --------------------------------------------------------
-- Host:                         (local)\SQLEXPRESS
-- Server versie:                Microsoft SQL Server 2017 (RTM) - 14.0.1000.169
-- Server OS:                    Windows 10 Home 10.0 <X64> (Build 18363: )
-- HeidiSQL Versie:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van restaurantdb wordt geschreven
CREATE DATABASE IF NOT EXISTS "restaurantdb";
USE "restaurantdb";

-- Structuur van  tabel restaurantdb.dranken wordt geschreven
CREATE TABLE IF NOT EXISTS "dranken" (
	"ID" INT NOT NULL,
	"NAAM" VARCHAR(50) NULL DEFAULT NULL COLLATE 'Latin1_General_CI_AS',
	"SOORT" VARCHAR(50) NULL DEFAULT NULL COLLATE 'Latin1_General_CI_AS',
	"PRIJS" DECIMAL(18,0) NULL DEFAULT NULL,
	PRIMARY KEY ("ID")
);

-- Dumpen data van tabel restaurantdb.dranken: -1 rows
/*!40000 ALTER TABLE "dranken" DISABLE KEYS */;
INSERT INTO "dranken" ("ID", "NAAM", "SOORT", "PRIJS") VALUES
	(1, 'Wijn', 'Rood', 5),
	(2, 'jagermeister', 'gekruid', 20),
	(4, 'Bier', 'HertogJan', 3),
	(5, 'GreyGoose', 'Vodka', 50),
	(6, 'Water', 'Doorzichtig', 2);
/*!40000 ALTER TABLE "dranken" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
