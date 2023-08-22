import 'package:fast_app_base/screen/main/tab/home/vo/bank_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

// void main() {
// //   // for( final entry in bankMap.entries){
// //   //   print(entry.key + ":" + (entry.value.accountTypeName ?? "") )
// //   // }

// //   // print(bankSet.contains(bankAccountShinhan1));

//   bankSet.toList();
//   bankAccounts.toSet();
// }

//List
final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
//List
//Map
// final bankMap = {
//   'shinhan1': bankAccountShinhan1,
//   'shinhan2': bankAccountShinhan2,
//   'shinhan3': bankAccountShinhan3,
//   'toss': bankAccountToss,
//   'kakao': bankAccountKakao,
// };

//Map
//

// 데이터가 존재하는지 확인할 때 주로 set을 쓴다. 리스트 보다 체크 하는데 훨씬 빠르게 체크 가능하다
// final bankSet = {
//   bankAccountShinhan1,
//   bankAccountShinhan2,
//   bankAccountShinhan3,
//   bankAccountToss,
//   bankAccountKakao,
// };

//
final bankAccountShinhan1 = BankAccount(
  bankShinhan,
  '111-111-111111',
  300000,
  accountTypeName: "신한 주거래 우대통장",
);

final bankAccountShinhan2 = BankAccount(
  bankShinhan,
  '112-112-111112',
  3000000,
  accountTypeName: "저축 예금",
);

final bankAccountShinhan3 = BankAccount(
  bankShinhan,
  '113-113-111113',
  445000,
  accountTypeName: "외화 적금",
);

final bankAccountToss = BankAccount(
  bankTtoss,
  '1121-12-111112',
  50000,
);

final bankAccountKakao = BankAccount(
  bankKakao,
  '11211-1-1111123',
  180000,
  accountTypeName: "입출금 통장",
);
