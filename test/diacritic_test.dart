// Copyright (c) 2016, Agilord. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:diacritic/diacritic.dart';
import 'package:test/test.dart';

void main() {
  group('Western languages.', () {

    test('English texts.', () {
      var quote = 'Insanity: doing the same thing over and '
          'over again and expecting different results.';
      expect(removeDiacritics(quote), quote);
    });

    test('Hungarian texts.', () {
      expect(removeDiacritics('árvíztűrő tükörfúrógép'), 'arvizturo tukorfurogep');
      expect(removeDiacritics('ÁRVÍZTŰRŐ TÜKÖRFÚRÓGÉP'), 'ARVIZTURO TUKORFUROGEP');
    });
  });
}
