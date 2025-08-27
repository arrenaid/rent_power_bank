import 'package:rent_power_bank/models/account_dto.dart';
import 'package:rent_power_bank/models/account_model.dart';
import 'package:rent_power_bank/models/user_dto_to_domain.dart';
import 'package:rent_power_bank/models/user_entity.dart';

extension AccountDtoToDomain on AccountDTO {
  AccountModel toDomain() {
    return AccountModel(
      user: user?.toDomain() ?? UserEntity.Empty(),
      access: access ?? '',
      refresh: refresh ?? '',
    );
  }
}
