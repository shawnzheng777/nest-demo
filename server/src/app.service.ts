/**
 * author: v_janyzheng
 * date: 2023/12/26
 *
 */

import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }
}
