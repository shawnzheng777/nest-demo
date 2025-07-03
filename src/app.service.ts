/**
 * author: v_janyzheng
 * date: 2023/12/26
 *
 */

import { Injectable } from '@nestjs/common';
import * as path from 'path';
import * as fs from 'fs';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!!!!';
  }

  getHtml(): string {
    const htmlPath = path.join(process.cwd(), 'public', 'index.html');
    const html = fs.readFileSync(htmlPath, 'utf-8');

    return html;
  }
}
