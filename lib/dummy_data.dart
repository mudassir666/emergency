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
          'https://e7.pngegg.com/pngimages/223/772/png-clipart-ambulance-emergency-vehicle-hospital-health-care-ambulance-compact-car-logo.png'),
  Department(
      id: 'd3',
      title: 'Fire Brigade',
      imageUrl:
          'https://1000logos.net/wp-content/uploads/2017/07/Fire-Department-Logo-500x385.png'),
  Department(
      id: 'd4',
      title: 'Rescue Team',
      imageUrl:
          'https://cdn.imgbin.com/5/0/6/imgbin-logo-rescue-team-hard-hat-emblem-ms-carita-inc-font-trademark-rescue-911-logo-sSv31QDZB6P3swHwnn1AYnTRT.jpg'),
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
];
