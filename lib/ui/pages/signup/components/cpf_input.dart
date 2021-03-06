import '../../../helpers/helpers.dart';
import '../signup.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CpfInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<SignUpPresenter>(context);
    return StreamBuilder<UIError?>(
      stream: presenter.cpfErrorStream,
      builder: (context, snapshot) {
        return TextFormField(
          decoration: InputDecoration(
            labelText: R.string.cpf,
            icon: Icon(Icons.crop_landscape_outlined,
                color: Theme.of(context).primaryColorLight),
            errorText: snapshot.data?.description,
          ),
          keyboardType: TextInputType.number,
          onChanged: presenter.validateCpf,
        );
      },
    );
  }
}
