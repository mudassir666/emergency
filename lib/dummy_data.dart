import 'package:emergency/models/department.dart';
import 'package:emergency/models/organization.dart';

const Dummy_Departments = const [
  Department(
      id: 'd1',
      title: 'Police',
      imageUrl:
          'https://1000logos.net/wp-content/uploads/2021/06/Police-logo.png'),
  Department(
      id: 'd2',
      title: 'Ambulance',
      imageUrl:
          'https://www.pinclipart.com/picdir/big/81-818992_cross-clipart-ambulance-icon-ambulance-vector-png-download.png'),
  Department(
      id: 'd3',
      title: 'Fire Brigade',
      imageUrl:
          'https://1000logos.net/wp-content/uploads/2017/07/Fire-Department-Logo-500x385.png'),
  Department(
      id: 'd4',
      title: 'Rescue Team',
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0329/0333/products/hard_hat_stickers_RESCUE_TEAM_240x.png?v=1571438565'),
];

const Dummy_Organization = const [
  Organization(
    id: 'o1',
    departmentId: 'd1',
    title: 'Karachi Police',
    imageUrl:
        'https://iconape.com/wp-content/png_logo_vector/sindh-police-pakistan-logo.png',
    time: Time.Open_24_Hours,
    email: 'feedback@sindhpolice.gov.pk',
    phone: '03173610166',
    webSite: 'https://www.sindhpolice.gov.pk/',
    sindh: true,
    balochistan: false,
    punjab: false,
    khyberPakhtunkhwa: false,
  ),
  Organization(
    id: 'o2',
    departmentId: 'd2',
    title: 'Edhi Ambulance',
    imageUrl:
        'https://dailytimes.com.pk/assets/uploads/2019/02/28/aaa-1280x720.png',
    time: Time.Open_24_Hours,
    email: 'lnfo@edhi.org',
    phone: '115',
    webSite: 'https://edhi.org/ambulance-service/',
    sindh: true,
    balochistan: true,
    punjab: true,
    khyberPakhtunkhwa: true,
  ),
  Organization(
    id: 'o3',
    departmentId: 'd2',
    title: 'Chhipa Ambulance',
    imageUrl:
        'https://www.chhipa.org/wp-content/themes/chhipa/images/logo.png',
    time: Time.Open_24_Hours,
    email: 'info@chhipa.org',
    phone: '1020',
    webSite: 'https://www.chhipa.org/services/chhipa-ambulance/',
    sindh: true,
    balochistan: true,
    punjab: true,
    khyberPakhtunkhwa: true,
  ),
  Organization(
    id: 'o4',
    departmentId: 'd2',
    title: 'Aman Ambulance',
    imageUrl:
        'https://www.theamanfoundation.org/wp-content/uploads/2016/11/The-Aman-Foundation-Logo-e1490165532527.png',
    time: Time.Open_24_Hours,
    email: 'info@amanfoundation.org',
    phone: '1021',
    webSite: 'https://www.theamanfoundation.org/program/aman-ambulance/',
    sindh: true,
    balochistan: true,
    punjab: true,
    khyberPakhtunkhwa: true,
  ),
  Organization(
    id: 'o5',
    departmentId: 'd2',
    title: 'JDC Ambulance',
    imageUrl:
        'https://jdcwelfare.org/wp-content/uploads/2020/10/jdc-png.png',
    time: Time.Open_24_Hours,
    email: 'info@jdcwelfare.org',
    phone: '1024',
    webSite: 'https://jdcwelfare.org/campaigns/ambulance-services/',
    sindh: true,
    balochistan: false,
    punjab: false,
    khyberPakhtunkhwa: false,
  ),
];
