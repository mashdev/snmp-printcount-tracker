-- Table structure for printer data
--
-- copy the create table function below for each printer
CREATE TABLE IF NOT EXISTS `glendale_printers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `printer_name` varchar(25) NOT NULL,
  `page_count` int(5) NOT NULL,
  `t_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- Table structure for table `printer_mstr`
--

CREATE TABLE IF NOT EXISTS `printer_mstr` (
  `id` varchar(21) DEFAULT NULL,
  `ip_addr` varchar(20) NOT NULL,
  `location` varchar(18) DEFAULT NULL,
  `make_model` varchar(22) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Name, model number, and locations';

