import 'package:rent_power_bank/models/account_dto.dart';
import 'package:rent_power_bank/models/user_dto_to_domain.dart';
import 'package:rent_power_bank/models/user.dart';

extension UserAccountDtoToDomain on AccountDTO {
  User toDomain() {
    User result = user?.toDomain() ?? User.Empty();
    result.authorizationToken = access ?? '';
    result.refresh = refresh ?? '';
    return result;
  }
}
