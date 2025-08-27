import 'package:rent_power_bank/models/user_dto.dart';
import 'package:rent_power_bank/models/user_entity.dart';

extension UserDtoToDomain on UserDTO {
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      phone: phone ?? '',
      authType: authType ?? '',
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      email: email ?? '',
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
      braintreeCustomerId: braintreeCustomerId ?? '',
      blocked: blocked ?? false,
    );
  }
}
