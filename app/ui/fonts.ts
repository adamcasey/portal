import { Inter, Lusitana } from 'next/font/google';
import { GeistSans } from 'geist/font/sans';

export const geistSans = GeistSans;
export const inter = Inter({ subsets: ['latin'] });
export const lusitana = Lusitana({
  weight: ['400', '700'],
  subsets: ['latin'],
});
